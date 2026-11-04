// Command server runs the stroller shop backend.
package main

import (
	"context"
	"encoding/json"
	"errors"
	"log/slog"
	"net/http"
	"os"
	"os/signal"
	"syscall"
	"time"

	"github.com/Platton96/stroller-shop/backend/data"
	"github.com/Platton96/stroller-shop/backend/internal/catalog"
	"github.com/Platton96/stroller-shop/backend/internal/httpapi"
)

func main() {
	log := slog.New(slog.NewTextHandler(os.Stdout, nil))
	if err := run(log); err != nil {
		log.Error("server stopped", "err", err)
		os.Exit(1)
	}
}

func run(log *slog.Logger) error {
	store, err := catalog.Load(data.Strollers)
	if err != nil {
		return err
	}
	if !json.Valid(data.Shop) {
		return errors.New("shop.json is not valid JSON")
	}

	port := os.Getenv("PORT") // hosting providers set PORT
	if port == "" {
		port = "8080"
	}
	api := &httpapi.Server{Catalog: store, Shop: data.Shop, Log: log}
	srv := &http.Server{
		Addr:              ":" + port,
		Handler:           api.Handler(),
		ReadHeaderTimeout: 5 * time.Second,
	}

	ctx, stop := signal.NotifyContext(context.Background(), os.Interrupt, syscall.SIGTERM)
	defer stop()
	go func() {
		<-ctx.Done()
		shutdownCtx, cancel := context.WithTimeout(context.Background(), 10*time.Second)
		defer cancel()
		_ = srv.Shutdown(shutdownCtx)
	}()

	log.Info("listening", "addr", srv.Addr, "strollers", store.Len())
	if err := srv.ListenAndServe(); !errors.Is(err, http.ErrServerClosed) {
		return err
	}
	return nil
}
