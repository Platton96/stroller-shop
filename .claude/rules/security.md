---
description: Where secrets live, how tokens and sensitive data flow, logging guardrails, clipboard and platform permissions.
paths: ["**/*auth*.dart","**/*token*.dart","**/*secure*.dart","**/*biometric*.dart","**/*clipboard*.dart","app/lib/di/network_module.dart","**/.env*","backend/**"]
---

# Security Rules

## Secrets Never in the Repo

API keys, tokens, signing material — **never** committed.

- **The Claude API key lives only in the backend's `.env`** (gitignored, loaded by the Go server). The Flutter app never sees it and never calls the Claude API directly — it talks to the backend only.
- **App configuration** (backend base URL) is non-secret by design: anyone can decompile an app and read it. It still comes from build-time config (`--dart-define` / `--dart-define-from-file`), not scattered literals.
- Commit an `.env.example` with placeholder names, never real values. Keep `.env` in `.gitignore`.
- **At runtime**: if the app stores user-specific credentials or tokens, they go in `FlutterSecureStorage` behind a single wrapper repository in `lib/repositories/`, never `SharedPreferences`.

If you find yourself writing `'sk-...'` or `'AIza...'` directly in a `.dart` or `.go` file, stop — that's a leak path.

## Logging Guardrails

- **PII**: phone, email, full name, address, payment numbers — never in `logger` calls / `print()`.
- **Tokens & request bodies**: don't log full HTTP bodies or `Authorization` headers; keep any Dio logging interceptor in `lib/di/network_module.dart` free of them.
- **`logError(exception, stackTrace)`** is fine; attaching extras that contain user data is a leak. Pass anonymous identifiers instead.

## Clipboard

- **Copying sensitive values to the clipboard**: only when the user explicitly requested it (long-press → "Copy").
- **Reading the clipboard**: only on an explicit user gesture (paste button). Don't auto-read on screen open — iOS surfaces a system banner for every read.

## Platform Permissions

Permission-gated plugins (`geolocator`, `camera`, `local_auth`, notifications) MUST go through a wrapper repository (`data-layer.md` "Repositories"). The repository:

1. Checks current permission state.
2. Requests if denied-but-not-blocked.
3. Returns a typed status (granted / denied / permanently denied / restricted).

UI shows the appropriate prompt / settings link based on the typed status — never raises a raw platform exception to the user.

## Network

- **TLS only**: no `http://` backend URLs in committed config, except `localhost`/emulator addresses for local development.
- Treat every backend response as untrusted input: parse through DTOs with defaults, never `dynamic` casts (`data-layer.md`).

## Anti-Patterns

- **Caching tokens in `SharedPreferences`** (or any non-secure storage).
- **Bypassing the storage wrapper for "just one key"**.
- **Pasting a secret "temporarily" into a source file** — if you need to test against a live key, put it in the backend `.env`.

## Checklist

- [ ] No hardcoded keys / tokens / secrets in `.dart` or `.go` files
- [ ] Claude API key referenced only from the backend `.env`
- [ ] `.env` is gitignored; only `.env.example` is committed
- [ ] Credentials stored via `FlutterSecureStorage` behind a repository, if stored at all
- [ ] No PII / full request bodies in logs
- [ ] Platform permissions wrapped in a repository returning typed status
