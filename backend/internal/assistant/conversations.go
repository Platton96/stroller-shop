package assistant

import (
	"crypto/rand"
	"encoding/hex"
	"sync"
	"time"

	"github.com/anthropics/anthropic-sdk-go/v2"
)

// conversationStore keeps chat histories in memory. Histories are append-only:
// the assistant's turns are stored exactly as returned so thinking blocks stay valid.
type conversationStore struct {
	mu    sync.Mutex
	ttl   time.Duration
	items map[string]*conversation
	now   func() time.Time
}

type conversation struct {
	mu       sync.Mutex
	messages []anthropic.MessageParam
	touched  time.Time
}

func newConversationStore(ttl time.Duration) *conversationStore {
	return &conversationStore{ttl: ttl, items: map[string]*conversation{}, now: time.Now}
}

// get returns the conversation for id, or a new one when id is empty or expired.
func (s *conversationStore) get(id string) (string, *conversation) {
	s.mu.Lock()
	defer s.mu.Unlock()
	now := s.now()
	for key, c := range s.items {
		if now.Sub(c.touched) > s.ttl {
			delete(s.items, key)
		}
	}
	if c, ok := s.items[id]; ok && id != "" {
		c.touched = now
		return id, c
	}
	id = newID()
	c := &conversation{touched: now}
	s.items[id] = c
	return id, c
}

func newID() string {
	b := make([]byte, 16)
	_, _ = rand.Read(b)
	return hex.EncodeToString(b)
}
