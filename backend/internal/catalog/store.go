package catalog

import (
	"encoding/json"
	"fmt"
	"sort"
	"strings"
)

// Store is a read-only, in-memory catalog. Safe for concurrent use because it is never mutated after Load.
type Store struct {
	items []Stroller
	byID  map[string]int
}

// Load parses the catalog JSON and validates it.
func Load(raw []byte) (*Store, error) {
	var items []Stroller
	if err := json.Unmarshal(raw, &items); err != nil {
		return nil, fmt.Errorf("parse catalog: %w", err)
	}
	s := &Store{items: items, byID: make(map[string]int, len(items))}
	for i, it := range items {
		if it.ID == "" {
			return nil, fmt.Errorf("item %d: empty id", i)
		}
		if _, dup := s.byID[it.ID]; dup {
			return nil, fmt.Errorf("duplicate id %q", it.ID)
		}
		if !knownType(it.Type) {
			return nil, fmt.Errorf("item %q: unknown type %q", it.ID, it.Type)
		}
		s.byID[it.ID] = i
	}
	return s, nil
}

func knownType(t Type) bool {
	for _, tl := range typeLabels {
		if tl.Type == t {
			return true
		}
	}
	return false
}

// Len is the number of items in the catalog.
func (s *Store) Len() int { return len(s.items) }

// Get returns one stroller by id.
func (s *Store) Get(id string) (Stroller, bool) {
	i, ok := s.byID[id]
	if !ok {
		return Stroller{}, false
	}
	return s.items[i], true
}

// Types returns all categories with item counts, in display order.
func (s *Store) Types() []TypeInfo {
	counts := map[Type]int{}
	for _, it := range s.items {
		counts[it.Type]++
	}
	out := make([]TypeInfo, 0, len(typeLabels))
	for _, tl := range typeLabels {
		out = append(out, TypeInfo{Type: tl.Type, Label: tl.Label, Count: counts[tl.Type]})
	}
	return out
}

// Sort orders search results.
type Sort string

const (
	SortRelevance Sort = ""
	SortPriceAsc  Sort = "price_asc"
	SortPriceDesc Sort = "price_desc"
	SortRating    Sort = "rating"
	SortWeight    Sort = "weight"
)

// Filter describes a catalog search. Zero values mean "no constraint".
// The same struct is meant to back both the REST endpoint and the AI agent's search tool.
type Filter struct {
	Query        string  // free text, every word must match name, description or features
	Types        []Type  // any of
	MinPriceBYN  int     //
	MaxPriceBYN  int     //
	MaxWeightKg  float64 // items with unknown weight are excluded when set
	ChildAgeMo   *int    // child's age must fit the stroller's age range
	CabinLuggage *bool   //
	Terrain      string  // city | all_terrain | mixed
	Season       string  // all | summer | winter; "all" items match any season
	InStockOnly  bool    //
	Sort         Sort    //
	Limit        int     // default 20, max 50
	Offset       int     //
}

// Page is one page of search results.
type Page struct {
	Items []Stroller `json:"items"`
	Total int        `json:"total"`
}

// Search returns items matching f, sorted and paginated.
func (s *Store) Search(f Filter) Page {
	words := strings.Fields(strings.ToLower(f.Query))
	matched := make([]Stroller, 0, len(s.items))
	for _, it := range s.items {
		if f.matches(it, words) {
			matched = append(matched, it)
		}
	}
	sortItems(matched, f.Sort)

	total := len(matched)
	limit := f.Limit
	if limit <= 0 {
		limit = 20
	}
	if limit > 50 {
		limit = 50
	}
	start := min(max(f.Offset, 0), total)
	end := min(start+limit, total)
	return Page{Items: matched[start:end], Total: total}
}

func (f Filter) matches(it Stroller, words []string) bool {
	if len(f.Types) > 0 && !containsType(f.Types, it.Type) {
		return false
	}
	if f.MinPriceBYN > 0 && it.PriceBYN < f.MinPriceBYN {
		return false
	}
	if f.MaxPriceBYN > 0 && it.PriceBYN > f.MaxPriceBYN {
		return false
	}
	if f.MaxWeightKg > 0 && (it.WeightKg == nil || *it.WeightKg > f.MaxWeightKg) {
		return false
	}
	if f.ChildAgeMo != nil {
		age := *f.ChildAgeMo
		if age < it.AgeFromMonths || (it.AgeToMonths != nil && age > *it.AgeToMonths) {
			return false
		}
	}
	if f.CabinLuggage != nil && it.CabinLuggage != *f.CabinLuggage {
		return false
	}
	if f.Terrain != "" && it.Terrain != f.Terrain && it.Terrain != "mixed" {
		return false
	}
	if f.Season != "" && it.Season != f.Season && it.Season != "all" {
		return false
	}
	if f.InStockOnly && !it.InStock {
		return false
	}
	if len(words) > 0 {
		hay := strings.ToLower(it.Name() + " " + it.Description + " " + strings.Join(it.Features, " "))
		for _, w := range words {
			if !strings.Contains(hay, w) {
				return false
			}
		}
	}
	return true
}

func containsType(ts []Type, t Type) bool {
	for _, x := range ts {
		if x == t {
			return true
		}
	}
	return false
}

func sortItems(items []Stroller, by Sort) {
	var less func(a, b Stroller) bool
	switch by {
	case SortPriceAsc:
		less = func(a, b Stroller) bool { return a.PriceBYN < b.PriceBYN }
	case SortPriceDesc:
		less = func(a, b Stroller) bool { return a.PriceBYN > b.PriceBYN }
	case SortRating:
		less = func(a, b Stroller) bool { return a.Rating > b.Rating }
	case SortWeight:
		// Unknown weight goes last.
		less = func(a, b Stroller) bool {
			if a.WeightKg == nil {
				return false
			}
			if b.WeightKg == nil {
				return true
			}
			return *a.WeightKg < *b.WeightKg
		}
	default:
		return // keep catalog order
	}
	sort.SliceStable(items, func(i, j int) bool { return less(items[i], items[j]) })
}
