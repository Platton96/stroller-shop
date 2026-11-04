// Package assistant runs the shop's AI consultant: a Claude tool-use loop over the catalog.
package assistant

import (
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"slices"
	"strings"
	"time"

	"github.com/anthropics/anthropic-sdk-go/v2"

	"github.com/Platton96/stroller-shop/backend/internal/catalog"
)

const (
	model         = "claude-sonnet-5-5"
	maxToolRounds = 8
	maxMessageLen = 2000
)

// ErrEmptyMessage is returned for blank user input.
var ErrEmptyMessage = errors.New("message is empty")

// CartLine is what the app reports about the current cart.
type CartLine struct {
	StrollerID string `json:"stroller_id"`
	Color      string `json:"color"`
	Quantity   int    `json:"quantity"`
}

// Request is one user turn.
type Request struct {
	ConversationID string     `json:"conversation_id"`
	Message        string     `json:"message"`
	Cart           []CartLine `json:"cart"`
}

// Action is a client-side effect the app must apply.
type Action struct {
	Type       string `json:"type"`
	StrollerID string `json:"stroller_id"`
	Color      string `json:"color"`
}

// Search describes one catalog search the assistant ran.
type Search struct {
	Summary string `json:"summary"`
	Found   int    `json:"found"`
}

// Reply is the assistant's answer to one user turn.
type Reply struct {
	ConversationID string             `json:"conversation_id"`
	Text           string             `json:"text"`
	Strollers      []catalog.Stroller `json:"strollers"`
	Actions        []Action           `json:"actions"`
	Searches       []Search           `json:"searches"`
	Suggestions    []string           `json:"suggestions"`
}

// Assistant answers chat turns.
type Assistant struct {
	client  anthropic.Client
	catalog *catalog.Store
	shop    json.RawMessage
	store   *conversationStore
	tools   []anthropic.ToolUnionParam
	system  string
}

// New builds an assistant. client must be configured with an API key.
func New(client anthropic.Client, store *catalog.Store, shop json.RawMessage) *Assistant {
	return &Assistant{
		client:  client,
		catalog: store,
		shop:    shop,
		store:   newConversationStore(2 * time.Hour),
		tools:   toolDefinitions(),
		system:  systemPrompt,
	}
}

// Chat runs one user turn through the tool loop.
func (a *Assistant) Chat(ctx context.Context, req Request) (Reply, error) {
	text := strings.TrimSpace(req.Message)
	if text == "" {
		return Reply{}, ErrEmptyMessage
	}
	if len([]rune(text)) > maxMessageLen {
		text = string([]rune(text)[:maxMessageLen])
	}

	id, conv := a.store.get(req.ConversationID)
	conv.mu.Lock()
	defer conv.mu.Unlock()

	reply := Reply{ConversationID: id, Strollers: []catalog.Stroller{}, Actions: []Action{}, Searches: []Search{}, Suggestions: []string{}}
	messages := append(slices.Clip(conv.messages),
		anthropic.NewUserMessage(anthropic.NewTextBlock(a.userTurn(text, req.Cart))))

	var texts []string
	for round := 0; ; round++ {
		resp, err := a.client.Messages.New(ctx, anthropic.MessageNewParams{
			Model:        model,
			MaxTokens:    16000,
			System:       []anthropic.TextBlockParam{{Text: a.system, CacheControl: anthropic.NewCacheControlEphemeralParam()}},
			Tools:        a.tools,
			Messages:     messages,
			OutputConfig: anthropic.OutputConfigParam{Effort: anthropic.OutputConfigEffortLow},
		})
		if err != nil {
			return Reply{}, fmt.Errorf("claude: %w", err)
		}
		messages = append(messages, resp.ToParam())

		var results []anthropic.ContentBlockParamUnion
		for _, block := range resp.Content {
			switch b := block.AsAny().(type) {
			case anthropic.TextBlock:
				texts = append(texts, b.Text)
			case anthropic.ToolUseBlock:
				out, isErr := a.runTool(b.Name, []byte(b.JSON.Input.Raw()), &reply)
				results = append(results, anthropic.NewToolResultBlock(b.ID, out, isErr))
			}
		}

		switch {
		case resp.StopReason == anthropic.StopReasonToolUse && round < maxToolRounds:
			messages = append(messages, anthropic.NewUserMessage(results...))
			continue
		case resp.StopReason == anthropic.StopReasonToolUse:
			messages = append(messages, anthropic.NewUserMessage(results...))
			texts = append(texts, "Давайте уточним запрос — я запутался в вариантах.")
		case resp.StopReason == anthropic.StopReasonRefusal:
			texts = []string{"С этим я не помогу. Давайте вернёмся к выбору коляски?"}
		}
		reply.Text, reply.Suggestions = splitSuggestions(strings.TrimSpace(strings.Join(texts, "\n\n")))
		conv.messages = messages
		return reply, nil
	}
}

func (a *Assistant) userTurn(text string, cart []CartLine) string {
	if len(cart) == 0 {
		return text + "\n\n<cart>пусто</cart>"
	}
	lines := make([]string, 0, len(cart))
	for _, l := range cart {
		name := l.StrollerID
		if s, ok := a.catalog.Get(l.StrollerID); ok {
			name = s.Brand + " " + s.Model
		}
		lines = append(lines, fmt.Sprintf("%s (%s) × %d", name, l.Color, l.Quantity))
	}
	return text + "\n\n<cart>" + strings.Join(lines, "; ") + "</cart>"
}

func (a *Assistant) runTool(name string, raw []byte, reply *Reply) (string, bool) {
	switch name {
	case toolSearch:
		var in searchInput
		if err := json.Unmarshal(raw, &in); err != nil {
			return "invalid input: " + err.Error(), true
		}
		page := a.catalog.Search(in.filter())
		in.Types = a.typeLabels(in.Types)
		items := make([]briefStroller, len(page.Items))
		for i, s := range page.Items {
			items[i] = brief(s)
		}
		reply.Searches = append(reply.Searches, Search{Summary: in.summary(page.Total), Found: page.Total})
		return toJSON(map[string]any{"total": page.Total, "items": items}), false

	case toolDetails:
		var in struct {
			ID string `json:"id"`
		}
		if err := json.Unmarshal(raw, &in); err != nil {
			return "invalid input: " + err.Error(), true
		}
		s, ok := a.catalog.Get(in.ID)
		if !ok {
			return "no stroller with id " + in.ID, true
		}
		return toJSON(s), false

	case toolShop:
		return string(a.shop), false

	case toolShow:
		var in struct {
			IDs []string `json:"ids"`
		}
		if err := json.Unmarshal(raw, &in); err != nil {
			return "invalid input: " + err.Error(), true
		}
		var missing []string
		for _, id := range in.IDs {
			s, ok := a.catalog.Get(id)
			if !ok {
				missing = append(missing, id)
				continue
			}
			if !slices.ContainsFunc(reply.Strollers, func(x catalog.Stroller) bool { return x.ID == id }) {
				reply.Strollers = append(reply.Strollers, s)
			}
		}
		if len(missing) > 0 {
			return "unknown ids: " + strings.Join(missing, ", "), true
		}
		return "shown", false

	case toolAddToCart:
		var in struct {
			StrollerID string `json:"stroller_id"`
			Color      string `json:"color"`
		}
		if err := json.Unmarshal(raw, &in); err != nil {
			return "invalid input: " + err.Error(), true
		}
		s, ok := a.catalog.Get(in.StrollerID)
		if !ok {
			return "no stroller with id " + in.StrollerID, true
		}
		color := in.Color
		if !slices.Contains(s.Colors, color) {
			if len(s.Colors) == 0 {
				color = ""
			} else {
				color = s.Colors[0]
			}
		}
		reply.Actions = append(reply.Actions, Action{Type: "add_to_cart", StrollerID: s.ID, Color: color})
		if !slices.ContainsFunc(reply.Strollers, func(x catalog.Stroller) bool { return x.ID == s.ID }) {
			reply.Strollers = append(reply.Strollers, s)
		}
		return fmt.Sprintf("added %s %s, color %s", s.Brand, s.Model, color), false
	}
	return "unknown tool " + name, true
}

func (a *Assistant) typeLabels(types []string) []string {
	labels := map[string]string{}
	for _, info := range a.catalog.Types() {
		labels[string(info.Type)] = strings.ToLower(info.Label)
	}
	out := make([]string, len(types))
	for i, t := range types {
		out[i] = t
		if label, ok := labels[t]; ok {
			out[i] = label
		}
	}
	return out
}

// splitSuggestions pulls the optional <suggestions> block out of the reply text.
func splitSuggestions(text string) (string, []string) {
	start := strings.Index(text, "<suggestions>")
	end := strings.Index(text, "</suggestions>")
	if start < 0 || end < start {
		return text, []string{}
	}
	var out []string
	for _, line := range strings.Split(text[start+len("<suggestions>"):end], "\n") {
		line = strings.TrimSpace(strings.TrimPrefix(strings.TrimSpace(line), "-"))
		if line != "" && len(out) < 3 {
			out = append(out, line)
		}
	}
	rest := strings.TrimSpace(text[:start] + text[end+len("</suggestions>"):])
	return rest, out
}
