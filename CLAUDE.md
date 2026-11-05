# CLAUDE.md — Колясочная (stroller shop demo)

Demo stroller shop with an AI consultant: a Go backend (`backend/`) and a Flutter app (`app/`). The app's architecture deliberately mirrors a large production Flutter codebase, collapsed into a single package.

## Repository layout

- `backend/` — Go, stdlib `net/http`. Catalog embedded via `go:embed` (`backend/data/*.json`). API: `/healthz`, `/api/v1/shop`, `/api/v1/types`, `/api/v1/strollers` (filters, sort, limit/offset), `/api/v1/strollers/{id}`. The Claude API key lives only in `backend/.env` (gitignored) or the hosting environment — never in the app or git.
- `app/` — Flutter app (FVM-pinned, see `app/.fvmrc`). Always use `fvm flutter` / `fvm dart`.
- `.claude/rules/` — coding rules. `dart-coding.md` loads every session; every other file is scoped by its `paths:` key. `paths:` loads on a *read* of a matching file, so read the applicable rule before creating a new file of a covered kind.
- `.claude/agents/` — `code-reviewer`, `unit-test-writer`.

## App architecture (`app/lib/`)

| Folder | Role |
|---|---|
| `services/<domain>/` | Retrofit `@RestApi` services; `obj/` and `response/` hold `*Obj` DTOs (primary constructor + `@JsonSerializable`) implementing `Transformable<Domain>` |
| `objects/` | Domain models (freezed), barrel `objects.dart` |
| `repositories/` | `@lazySingleton` repositories extending `BaseRepository`; every API call goes through `guardApiCall*`, DioException → `AppException` |
| `core/` | `BaseBloc`, `AppBlocProvider`, transformers, page-based `AppNavigator`, `Mediator`, `ToastService`, exceptions, logger |
| `di/` | injectable + get_it: one `@InjectableInit`, `@module`s for Dio and the navigator |
| `ui_kit/` | Theme tokens (`context.colors`, `context.textStyles`, `AppRadius`) and shared widgets |
| `features/<name>/` | `bloc/`, `models/` (VMs), `mappers/`, `widgets/`, `<name>_screen.dart`, `<name>_pages.dart`; nested per screen when a feature has 2+ screens |
| `l10n/` | `app_ru.arb` → generated `S` |

Data flow: `Service (DTO)` → `Repository (domain object)` → `BLoC` → `VMMapper (VM)` → widgets. Navigation, toasts and cross-feature messages happen only in BLoC handlers; widgets dispatch events.

## Commands (run from `app/`)

```bash
fvm flutter pub get
fvm flutter gen-l10n
fvm dart run build_runner build
fvm dart format lib test
fvm flutter analyze
fvm flutter test
fvm flutter run    # uses the hosted backend; --dart-define=API_BASE_URL=http://localhost:8080 for a local one
```

Backend is hosted on Render (`render.yaml`, `backend/Dockerfile`) at https://stroller-shop-api.onrender.com. Locally: `cd backend && go run ./cmd/server` (port from `PORT`, default 8080), `go test ./...`.

Never edit generated files (`*.freezed.dart`, `*.g.dart`, `*.config.dart`, `lib/l10n/generated/*`) — a hook blocks it; rerun the generators instead. `fvm flutter analyze` must be clean before a commit.
