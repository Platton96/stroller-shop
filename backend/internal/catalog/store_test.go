package catalog

import (
	"testing"
)

const fixture = `[
 {"id":"a","brand":"Cybex","model":"Priam","type":"modular_2in1","description":"Премиальная модульная коляска","price_byn":4200,"age_from_months":0,"age_to_months":48,"weight_kg":13.6,"cabin_luggage":false,"season":"all","terrain":"mixed","features":["Большие колёса"],"in_stock":true,"rating":4.8},
 {"id":"b","brand":"Babyzen","model":"YOYO","type":"travel","description":"Лёгкая для самолёта","price_byn":1900,"age_from_months":6,"age_to_months":48,"weight_kg":6.2,"cabin_luggage":true,"season":"summer","terrain":"city","features":["Складывается одной рукой"],"in_stock":true,"rating":4.7},
 {"id":"c","brand":"Riko","model":"Basic","type":"cane","description":"Бюджетная трость","price_byn":300,"age_from_months":6,"age_to_months":36,"weight_kg":null,"cabin_luggage":false,"season":"summer","terrain":"city","features":[],"in_stock":false,"rating":4.0}
]`

func load(t *testing.T) *Store {
	t.Helper()
	s, err := Load([]byte(fixture))
	if err != nil {
		t.Fatal(err)
	}
	return s
}

func ids(p Page) []string {
	out := make([]string, len(p.Items))
	for i, it := range p.Items {
		out[i] = it.ID
	}
	return out
}

func eq(a, b []string) bool {
	if len(a) != len(b) {
		return false
	}
	for i := range a {
		if a[i] != b[i] {
			return false
		}
	}
	return true
}

func ptr[T any](v T) *T { return &v }

func TestLoadRejectsBadData(t *testing.T) {
	cases := map[string]string{
		"duplicate id": `[{"id":"x","type":"cane"},{"id":"x","type":"cane"}]`,
		"empty id":     `[{"id":"","type":"cane"}]`,
		"unknown type": `[{"id":"x","type":"rocket"}]`,
		"bad json":     `[{`,
	}
	for name, raw := range cases {
		if _, err := Load([]byte(raw)); err == nil {
			t.Errorf("%s: expected error", name)
		}
	}
}

func TestSearch(t *testing.T) {
	s := load(t)
	cases := []struct {
		name string
		f    Filter
		want []string
	}{
		{"all", Filter{}, []string{"a", "b", "c"}},
		{"max price", Filter{MaxPriceBYN: 2000}, []string{"b", "c"}},
		{"type", Filter{Types: []Type{TypeTravel, TypeCane}}, []string{"b", "c"}},
		{"cabin", Filter{CabinLuggage: ptr(true)}, []string{"b"}},
		{"unknown weight excluded", Filter{MaxWeightKg: 20}, []string{"a", "b"}},
		{"newborn", Filter{ChildAgeMo: ptr(0)}, []string{"a"}},
		{"in stock", Filter{InStockOnly: true}, []string{"a", "b"}},
		{"all-season matches winter", Filter{Season: "winter"}, []string{"a"}},
		{"mixed terrain matches all_terrain", Filter{Terrain: "all_terrain"}, []string{"a"}},
		{"text, case-insensitive, all words", Filter{Query: "ЛЁГКАЯ самолёта"}, []string{"b"}},
		{"text in features", Filter{Query: "одной рукой"}, []string{"b"}},
		{"sort price asc", Filter{Sort: SortPriceAsc}, []string{"c", "b", "a"}},
		{"sort weight, unknown last", Filter{Sort: SortWeight}, []string{"b", "a", "c"}},
		{"pagination", Filter{Sort: SortPriceAsc, Limit: 1, Offset: 1}, []string{"b"}},
		{"offset past end", Filter{Offset: 10}, []string{}},
	}
	for _, tc := range cases {
		t.Run(tc.name, func(t *testing.T) {
			got := ids(s.Search(tc.f))
			if !eq(got, tc.want) {
				t.Fatalf("got %v, want %v", got, tc.want)
			}
		})
	}
}

func TestSearchTotalIgnoresPagination(t *testing.T) {
	p := load(t).Search(Filter{Limit: 1})
	if p.Total != 3 || len(p.Items) != 1 {
		t.Fatalf("total=%d items=%d", p.Total, len(p.Items))
	}
}

func TestTypesCounts(t *testing.T) {
	for _, ti := range load(t).Types() {
		want := map[Type]int{TypeModular2in1: 1, TypeTravel: 1, TypeCane: 1}[ti.Type]
		if ti.Count != want {
			t.Errorf("%s: got %d, want %d", ti.Type, ti.Count, want)
		}
	}
}
