// Package httpapi exposes the catalog over a small JSON REST API.
package httpapi

import (
	"encoding/json"
	"log/slog"
	"net/http"
	"strconv"
	"strings"
	"time"

	"github.com/Platton96/stroller-shop/backend/internal/catalog"
)

// Server wires handlers to their dependencies.
type Server struct {
	Catalog *catalog.Store
	Shop    json.RawMessage
	Log     *slog.Logger
}

// Handler returns the root handler with all routes and middleware.
func (s *Server) Handler() http.Handler {
	mux := http.NewServeMux()
	mux.HandleFunc("GET /healthz", func(w http.ResponseWriter, _ *http.Request) {
		writeJSON(w, http.StatusOK, map[string]string{"status": "ok"})
	})
	mux.HandleFunc("GET /api/v1/shop", s.getShop)
	mux.HandleFunc("GET /api/v1/types", s.listTypes)
	mux.HandleFunc("GET /api/v1/strollers", s.searchStrollers)
	mux.HandleFunc("GET /api/v1/strollers/{id}", s.getStroller)
	return s.logRequests(cors(mux))
}

func (s *Server) getShop(w http.ResponseWriter, _ *http.Request) {
	writeJSON(w, http.StatusOK, s.Shop)
}

func (s *Server) listTypes(w http.ResponseWriter, _ *http.Request) {
	writeJSON(w, http.StatusOK, s.Catalog.Types())
}

func (s *Server) getStroller(w http.ResponseWriter, r *http.Request) {
	item, ok := s.Catalog.Get(r.PathValue("id"))
	if !ok {
		writeError(w, http.StatusNotFound, "stroller not found")
		return
	}
	writeJSON(w, http.StatusOK, item)
}

// searchStrollers handles GET /api/v1/strollers with optional query params:
// q, type (comma-separated), min_price, max_price, max_weight, child_age,
// cabin (true|false), terrain, season, in_stock (true), sort, limit, offset.
func (s *Server) searchStrollers(w http.ResponseWriter, r *http.Request) {
	f, err := parseFilter(r.URL.Query())
	if err != nil {
		writeError(w, http.StatusBadRequest, err.Error())
		return
	}
	writeJSON(w, http.StatusOK, s.Catalog.Search(f))
}

type queryError struct{ param string }

func (e queryError) Error() string { return "invalid query parameter: " + e.param }

func parseFilter(q map[string][]string) (catalog.Filter, error) {
	get := func(k string) string {
		if v := q[k]; len(v) > 0 {
			return strings.TrimSpace(v[0])
		}
		return ""
	}
	atoi := func(k string) (int, error) {
		v := get(k)
		if v == "" {
			return 0, nil
		}
		n, err := strconv.Atoi(v)
		if err != nil || n < 0 {
			return 0, queryError{k}
		}
		return n, nil
	}

	var f catalog.Filter
	var err error
	f.Query = get("q")
	if t := get("type"); t != "" {
		for _, part := range strings.Split(t, ",") {
			f.Types = append(f.Types, catalog.Type(strings.TrimSpace(part)))
		}
	}
	if f.MinPriceBYN, err = atoi("min_price"); err != nil {
		return f, err
	}
	if f.MaxPriceBYN, err = atoi("max_price"); err != nil {
		return f, err
	}
	if v := get("max_weight"); v != "" {
		if f.MaxWeightKg, err = strconv.ParseFloat(v, 64); err != nil || f.MaxWeightKg < 0 {
			return f, queryError{"max_weight"}
		}
	}
	if v := get("child_age"); v != "" {
		n, err := atoi("child_age")
		if err != nil {
			return f, err
		}
		f.ChildAgeMo = &n
	}
	if v := get("cabin"); v != "" {
		b, err := strconv.ParseBool(v)
		if err != nil {
			return f, queryError{"cabin"}
		}
		f.CabinLuggage = &b
	}
	f.Terrain = get("terrain")
	f.Season = get("season")
	f.InStockOnly = get("in_stock") == "true"
	switch sort := catalog.Sort(get("sort")); sort {
	case catalog.SortRelevance, catalog.SortPriceAsc, catalog.SortPriceDesc, catalog.SortRating, catalog.SortWeight:
		f.Sort = sort
	default:
		return f, queryError{"sort"}
	}
	if f.Limit, err = atoi("limit"); err != nil {
		return f, err
	}
	if f.Offset, err = atoi("offset"); err != nil {
		return f, err
	}
	return f, nil
}

func writeJSON(w http.ResponseWriter, status int, v any) {
	w.Header().Set("Content-Type", "application/json; charset=utf-8")
	w.WriteHeader(status)
	_ = json.NewEncoder(w).Encode(v)
}

func writeError(w http.ResponseWriter, status int, msg string) {
	writeJSON(w, status, map[string]string{"error": msg})
}

// cors allows the Flutter web build to call the API from another origin.
func cors(next http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.Header().Set("Access-Control-Allow-Origin", "*")
		w.Header().Set("Access-Control-Allow-Methods", "GET, POST, OPTIONS")
		w.Header().Set("Access-Control-Allow-Headers", "Content-Type")
		if r.Method == http.MethodOptions {
			w.WriteHeader(http.StatusNoContent)
			return
		}
		next.ServeHTTP(w, r)
	})
}

type statusRecorder struct {
	http.ResponseWriter
	status int
}

func (r *statusRecorder) WriteHeader(code int) {
	r.status = code
	r.ResponseWriter.WriteHeader(code)
}

func (s *Server) logRequests(next http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		start := time.Now()
		rec := &statusRecorder{ResponseWriter: w, status: http.StatusOK}
		next.ServeHTTP(rec, r)
		s.Log.Info("request", "method", r.Method, "path", r.URL.Path, "status", rec.status, "dur", time.Since(start))
	})
}
