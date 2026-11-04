package httpapi

import (
	"encoding/json"
	"io"
	"log/slog"
	"net/http"
	"net/http/httptest"
	"testing"

	"github.com/Platton96/stroller-shop/backend/internal/catalog"
)

func newTestServer(t *testing.T) *httptest.Server {
	t.Helper()
	store, err := catalog.Load([]byte(`[
	 {"id":"a","brand":"Cybex","model":"Priam","type":"modular_2in1","price_byn":4200,"season":"all","terrain":"mixed","in_stock":true},
	 {"id":"b","brand":"Babyzen","model":"YOYO","type":"travel","price_byn":1900,"cabin_luggage":true,"season":"summer","terrain":"city","in_stock":true}
	]`))
	if err != nil {
		t.Fatal(err)
	}
	api := &Server{Catalog: store, Shop: json.RawMessage(`{"name":"test"}`), Log: slog.New(slog.NewTextHandler(io.Discard, nil))}
	srv := httptest.NewServer(api.Handler())
	t.Cleanup(srv.Close)
	return srv
}

func get(t *testing.T, srv *httptest.Server, path string) (int, []byte) {
	t.Helper()
	resp, err := http.Get(srv.URL + path)
	if err != nil {
		t.Fatal(err)
	}
	defer resp.Body.Close()
	body, _ := io.ReadAll(resp.Body)
	return resp.StatusCode, body
}

func TestRoutes(t *testing.T) {
	srv := newTestServer(t)
	cases := []struct {
		path   string
		status int
	}{
		{"/healthz", 200},
		{"/api/v1/shop", 200},
		{"/api/v1/types", 200},
		{"/api/v1/strollers", 200},
		{"/api/v1/strollers/a", 200},
		{"/api/v1/strollers/nope", 404},
		{"/api/v1/strollers?max_price=abc", 400},
		{"/api/v1/strollers?sort=random", 400},
		{"/api/v1/strollers?cabin=maybe", 400},
		{"/api/v1/strollers?limit=-1", 400},
	}
	for _, tc := range cases {
		if got, body := get(t, srv, tc.path); got != tc.status {
			t.Errorf("%s: status %d, want %d (%s)", tc.path, got, tc.status, body)
		}
	}
}

func TestSearchQueryParams(t *testing.T) {
	srv := newTestServer(t)
	_, body := get(t, srv, "/api/v1/strollers?cabin=true&max_price=2000&sort=price_asc")
	var page catalog.Page
	if err := json.Unmarshal(body, &page); err != nil {
		t.Fatal(err)
	}
	if page.Total != 1 || page.Items[0].ID != "b" {
		t.Fatalf("unexpected page: %s", body)
	}
}
