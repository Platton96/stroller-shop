---
description: Dependency injection conventions — @injectable vs @lazySingleton vs @module, the single InjectableInit in lib/di, scope policy, and mapper injection. The single source of DI doctrine.
paths: ["app/lib/di/**","**/*_repository.dart","**/*_service.dart","**/*_mapper.dart","**/*_bloc.dart"]
---

# Dependency Injection Rules

## Stack Overview

- **Library:** [`injectable`](https://pub.dev/packages/injectable) + GetIt.
- **Generator:** `injectable_generator` (build_runner). Reads `@injectable` / `@lazySingleton` annotations across `lib/` and emits one wiring file.
- **Single entry point:** `lib/di/injection.dart` declares the only `@InjectableInit()` and exposes `configureDependencies(getIt)`; the generated `injection.config.dart` sits beside it. There are no micro-packages, no `ExternalModule`, and no build order to maintain.
- **Locator:** `ServiceLocator.getIt` (`lib/di/service_locator.dart`). `AppBlocProvider` resolves BLoCs through it; widgets and BLoCs do not call `getIt` themselves.
- **`@module` classes** exist only for third-party objects: `lib/di/network_module.dart` (`Dio`) and `lib/di/navigation_module.dart` (`AppNavigator`).

## Annotation Decision Table

| Annotation | Use when | Don't use when |
|---|---|---|
| `@lazySingleton` | Shared, long-lived: repositories, services (Retrofit `@RestApi`), feature mediators (`mediator.md`), app-wide caches. | Screen-scoped state. |
| `@injectable` | Screen-scoped BLoCs, short-lived objects, per-screen mappers (any class with a finite per-screen lifetime). | Things you want to live across screens. |
| `@singleton` | **NEVER.** Eager singletons are not used. | Always — use `@lazySingleton` instead. |
| `@module` | **Only** for third-party objects whose construction we don't own: `Dio`, `FlutterSecureStorage`, `PackageInfo`, `Uuid`, `ImagePicker`. | Project-owned classes — annotate them directly. |
| `@LazySingleton(as: <Interface>)` | Binding a concrete impl to an abstract interface (e.g. `AppNavigator` ← `AppRootNavigator`). | Same-type registrations. |
| `@disposeMethod` | The class has a `dispose()` / `close()` to call on container teardown. | Pure data holders. |
| `@factoryMethod` | Retrofit factory constructor (`factory FooService(Dio dio) = _FooService;`). | Plain constructors. |
| `@factoryParam` | A constructor parameter is *not* from DI — it comes from the call site (e.g. `AppBlocProvider`'s `param1`). | Parameters that should be resolved by the container. |

## Scope Policy

- **`@lazySingleton`** — default for "lives as long as the GetIt container". Created on first request; survives until app shutdown. Use for any cross-screen or app-lifecycle dependency.
- **`@injectable`** — a new instance per `getIt<T>()` call. Use for screen-scoped BLoCs (each `AppBlocProvider` resolves fresh) and any short-lived helper.
- **`@singleton` is banned.** Eager registration adds startup latency and there's no observed need for eagerness over laziness.

## Constructor vs Field Injection

- **Constructor injection only.** Declare all dependencies in the constructor; never use field injection.
- **`final` private fields** for stored dependencies:
  ```dart
  @lazySingleton
  class StrollerRepository extends BaseRepository {
    final StrollerService _service;
    StrollerRepository(this._service);
  }
  ```

## `@module` for Third-Party Objects

Use `@module` only when the object's construction isn't ours:

```dart
@module
abstract class NetworkModule {
  @lazySingleton
  Dio get dio => Dio(BaseOptions(baseUrl: ...));
}
```

Project-owned classes (`StrollerRepository`, `CatalogBloc`, `CatalogVMMapper`, ...) **MUST be annotated directly** with `@lazySingleton` / `@injectable` — not via `@module`. The `@module` indirection is reserved for third-party deps.

## Mapper Injection

- **Mappers are `@injectable` instance classes**, not static methods. Anonymous private helper classes are an anti-pattern.
- **Inject dependencies via constructor** like any other `@injectable`.
- **Widgets receive VMs from BLoC state, never call mappers from `build()`.** The mapper is invoked in the BLoC handler that produces the state — keep "compute the VM" inside the BLoC.

```dart
// good — injected mapper, called in BLoC handler
@injectable
class CatalogVMMapper {
  const CatalogVMMapper();

  CatalogVM toCatalogVM(CatalogData data) => CatalogVM(
    items: data.strollers.map(_toItemVM).toList(),
  );
}

// in the BLoC handler
final vm = _vmMapper.toCatalogVM(data);
emit(.loaded(data: vm));
```

## Common Mistakes

| Mistake | Fix |
|---|---|
| `@singleton` | `@lazySingleton`. Eager singletons aren't used. |
| Mapper called from widget `build()` | Move to BLoC handler; emit state with the resulting VM. |
| `@module` for project-owned class | Annotate the class directly. |
| Editing `*.config.dart` | Never. Regenerate via `fvm dart run build_runner build` (from `app/`). |
| Calling `getIt` from a widget or BLoC | Constructor-inject the dependency; `AppBlocProvider` resolves BLoCs. |
| `@injectable` on a BLoC that should live across screens | Use `@lazySingleton` — but consider whether a repository is the better home for that shared state. |

## Checklist

- [ ] New class is annotated `@lazySingleton` or `@injectable`, never `@singleton`, never via `@module` (unless third-party).
- [ ] Mapper is `@injectable` with constructor-injected dependencies; never a static helper.
- [ ] Widget consumes VM from state; never calls mapper from `build()`.
- [ ] If binding an abstract interface, used `@LazySingleton(as: <Iface>)`.
- [ ] If class has `dispose()`, marked with `@disposeMethod`.
- [ ] `fvm dart run build_runner build` was run after annotation changes.
- [ ] `*.config.dart` files NOT edited manually.
