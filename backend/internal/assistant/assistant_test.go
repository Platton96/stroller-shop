package assistant

import (
	"context"
	"encoding/json"
	"io"
	"net/http"
	"net/http/httptest"
	"strings"
	"sync"
	"testing"

	"github.com/anthropics/anthropic-sdk-go/v2"
	"github.com/anthropics/anthropic-sdk-go/v2/option"

	"github.com/Platton96/stroller-shop/backend/internal/catalog"
)

const fixture = `[
 {"id":"yoyo","brand":"Stokke","model":"YOYO","type":"travel","description":"Лёгкая","price_byn":1700,"age_from_months":6,"weight_kg":6.2,"cabin_luggage":true,"season":"all","terrain":"city","colors":["Black","Olive"],"features":[],"in_stock":true,"rating":4.7},
 {"id":"priam","brand":"Cybex","model":"Priam","type":"modular_2in1","description":"Большая","price_byn":4800,"age_from_months":0,"weight_kg":13.1,"cabin_luggage":false,"season":"all","terrain":"mixed","colors":["Deep Black"],"features":[],"in_stock":true,"rating":4.8}
]`

// fakeClaude replays scripted responses and records request bodies.
type fakeClaude struct {
	mu        sync.Mutex
	responses []string
	requests  []map[string]any
}

func (f *fakeClaude) ServeHTTP(w http.ResponseWriter, r *http.Request) {
	f.mu.Lock()
	defer f.mu.Unlock()
	body, _ := io.ReadAll(r.Body)
	var req map[string]any
	_ = json.Unmarshal(body, &req)
	f.requests = append(f.requests, req)
	if len(f.responses) == 0 {
		http.Error(w, `{"type":"error","error":{"type":"api_error","message":"no script"}}`, http.StatusInternalServerError)
		return
	}
	resp := f.responses[0]
	f.responses = f.responses[1:]
	w.Header().Set("Content-Type", "application/json")
	_, _ = io.WriteString(w, resp)
}

func message(stop string, content string) string {
	return `{"id":"msg","type":"message","role":"assistant","model":"claude-sonnet-5-5","stop_reason":"` + stop +
		`","content":[` + content + `],"usage":{"input_tokens":1,"output_tokens":1}}`
}

func toolUse(id, name, input string) string {
	return `{"type":"tool_use","id":"` + id + `","name":"` + name + `","input":` + input + `}`
}

func text(s string) string {
	b, _ := json.Marshal(s)
	return `{"type":"text","text":` + string(b) + `}`
}

func newTestAssistant(t *testing.T, responses ...string) (*Assistant, *fakeClaude) {
	t.Helper()
	store, err := catalog.Load([]byte(fixture))
	if err != nil {
		t.Fatal(err)
	}
	fake := &fakeClaude{responses: responses}
	srv := httptest.NewServer(fake)
	t.Cleanup(srv.Close)
	client := anthropic.NewClient(option.WithBaseURL(srv.URL), option.WithAPIKey("test"), option.WithMaxRetries(0))
	return New(client, store, json.RawMessage(`{"name":"Колясочная"}`)), fake
}

func TestChatRunsToolsAndCollectsUIData(t *testing.T) {
	a, fake := newTestAssistant(t,
		message("tool_use", toolUse("t1", toolSearch, `{"cabin_luggage":true,"max_price_byn":2000}`)),
		message("tool_use", toolUse("t2", toolShow, `{"ids":["yoyo"]}`)+","+toolUse("t3", toolAddToCart, `{"stroller_id":"yoyo","color":"Pink"}`)),
		message("end_turn", text("Подойдёт YOYO.\n<suggestions>\n- А на зиму?\n- Условия доставки\n</suggestions>")),
	)

	reply, err := a.Chat(context.Background(), Request{Message: "лёгкая в самолёт до 2000"})
	if err != nil {
		t.Fatal(err)
	}

	if reply.Text != "Подойдёт YOYO." {
		t.Errorf("text = %q", reply.Text)
	}
	if got := reply.Suggestions; len(got) != 2 || got[0] != "А на зиму?" {
		t.Errorf("suggestions = %v", got)
	}
	if len(reply.Searches) != 1 || reply.Searches[0].Found != 1 || !strings.Contains(reply.Searches[0].Summary, "до 2000 BYN") {
		t.Errorf("searches = %+v", reply.Searches)
	}
	if len(reply.Strollers) != 1 || reply.Strollers[0].ID != "yoyo" {
		t.Errorf("strollers = %+v", reply.Strollers)
	}
	if len(reply.Actions) != 1 || reply.Actions[0] != (Action{Type: "add_to_cart", StrollerID: "yoyo", Color: "Black"}) {
		t.Errorf("actions = %+v (unknown color must fall back to the first one)", reply.Actions)
	}
	if len(fake.requests) != 3 {
		t.Fatalf("requests = %d", len(fake.requests))
	}
	if msgs := fake.requests[2]["messages"].([]any); len(msgs) != 5 {
		t.Errorf("third request carries %d messages, want user+assistant+results+assistant+results", len(msgs))
	}
}

func TestChatKeepsHistoryPerConversation(t *testing.T) {
	a, fake := newTestAssistant(t,
		message("end_turn", text("Сколько месяцев ребёнку?")),
		message("end_turn", text("Понял.")),
	)

	first, err := a.Chat(context.Background(), Request{Message: "Нужна коляска"})
	if err != nil {
		t.Fatal(err)
	}
	if _, err := a.Chat(context.Background(), Request{ConversationID: first.ConversationID, Message: "8"}); err != nil {
		t.Fatal(err)
	}

	if msgs := fake.requests[1]["messages"].([]any); len(msgs) != 3 {
		t.Errorf("second turn sent %d messages, want 3", len(msgs))
	}
}

func TestChatRejectsEmptyMessage(t *testing.T) {
	a, _ := newTestAssistant(t)
	if _, err := a.Chat(context.Background(), Request{Message: "  "}); err != ErrEmptyMessage {
		t.Errorf("err = %v", err)
	}
}

func TestChatDoesNotStoreFailedTurn(t *testing.T) {
	a, fake := newTestAssistant(t)
	if _, err := a.Chat(context.Background(), Request{Message: "привет"}); err == nil {
		t.Fatal("want error from failing API")
	}
	fake.responses = []string{message("end_turn", text("Здравствуйте!"))}
	reply, err := a.Chat(context.Background(), Request{Message: "привет"})
	if err != nil || reply.Text != "Здравствуйте!" {
		t.Fatalf("reply = %+v, err = %v", reply, err)
	}
}
