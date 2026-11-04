---
description: Exception taxonomy and the repository → BLoC → UI error flow. Covers when to throw, when to swallow, when to log, and how to mark control-flow noise.
paths: ["**/*_bloc.dart","**/*_event.dart","**/*_state.dart","**/*_repository.dart","app/lib/core/exceptions/**/*.dart"]
---

# Error Handling Rules

## Layer Responsibilities

**Repository:** wrap every API call in `guardApiCall` / `guardApiCallWithMap` / `guardApiCallVoid`. The guard maps `DioException` to the sealed `AppException` (`lib/core/exceptions/app_exception.dart`) and rethrows. **No manual `try/catch`** unless you have a specific transformation to do.

**BLoC:** never wrap a handler body in `try/catch`. `BaseBloc` catches every exception thrown from a handler, calls `handleGeneralException`, and the default implementation emits an error state. Override `handleGeneralException` only when you need a feature-specific error state shape.

**UI:** read the error state via the BLoC state union. Error states **MUST implement `BlocErrorStateInterface`**.

```dart
// Repository — no try/catch, the guard owns failure paths
Future<List<Stroller>> fetchStrollers() => guardApiCall(_service.getStrollers);

// BLoC — let BaseBloc catch; override only for custom shape
@override
void handleGeneralException(Event e, Emitter<State> emit, Exception ex) {
  emit(.error(exception: ex, data: state.data));
}

// State — implement the interface
@Implements<BlocErrorStateInterface>()
const factory State.error({
  required StateData data,
  required Exception exception,
}) = _ErrorState;
```

## Custom Exception Types

Throw a project exception (not a raw `Exception`/`StateError`) when:

1. **The same failure can happen at multiple call sites** and benefits from a typed catch elsewhere.
2. **The exception is expected control flow** and should not be logged. See [Control-Flow vs Real Errors](#control-flow-vs-real-errors).
3. **Callers need to discriminate between failure modes** (e.g. `AppException` network vs server vs unauthorized variants).

Otherwise, let `DioException` / the underlying exception propagate — the guard normalizes it.

The project-wide sealed union `AppException` lives in `lib/core/exceptions/app_exception.dart`. Feature-specific exceptions live in the producing feature.

## Catching: `Exception`, Not `Error`

**A new `try/catch` MUST catch `Exception` (`on Exception catch (e)` or a bare `catch (e)`) — never add a new `on Error catch`.** `Error` subtypes (`StateError`, `TypeError`, `ArgumentError`, a failed `assert`) signal a programmer bug, not a recoverable failure. Catching them and routing them through the same recovery path as a network failure hides the bug instead of crashing loud enough to get fixed.

```dart
// good — recoverable failure, typed catch
try {
  await _repo.submit(payload);
} on Exception catch (e, st) {
  logError(e, st);
}

// bad — masks a programmer bug as a handled failure
try {
  _parseCachedPayload(raw);
} on TypeError catch (_) {
  return null;
}
```

**Exception:** an existing `on Error catch` untouched by the current change — don't retrofit it opportunistically; flag it for a separate fix instead.

## Control-Flow vs Real Errors

Two failure categories that look identical to a `try/catch` but should be treated very differently:

| Category | Examples | Behavior |
|---|---|---|
| **Real error** | DTO parsing failure, unexpected null, server 500 | Surface to user, log, fix root cause |
| **Control-flow noise** | User cancelled, request superseded by a newer one | Do NOT log as an error, do NOT surface as error; route to the appropriate happy-path state |

**MUST mark control-flow exception classes with `@Implements<DomainIgnoreFromCrashReporting>()`** (`lib/core/exceptions/domain_ignore_from_crash_reporting.dart`) — this is the single switch that keeps the logger quiet.

```dart
@freezed
sealed class FeatureException with _$FeatureException implements Exception {
  @Implements<DomainIgnoreFromCrashReporting>()
  const factory FeatureException.cancelledByUser() = _CancelledByUser;

  const factory FeatureException.invalidInput(String reason) = _InvalidInput;
}
```

`_CancelledByUser` is silently ignored by error reporting; `_InvalidInput` is logged like any other exception. Filter by marker type, never by pattern-matching stringified messages — those rot.

## When to `logError`

`logError(exception, stackTrace)` writes to the app `logger` (`lib/core/logging/logger.dart`). Use it when:

- You **caught** an exception and decided the operation can continue, but want a record.
- You're at a boundary where the normal guard chain doesn't catch (e.g. inside a `Stream.listen` callback, a `Timer` handler, or a platform-channel callback).

Do NOT call `logError` when:

- The exception is going to propagate to a guard / `BaseBloc.handleGeneralException` anyway — they already log.
- The exception is `@Implements<DomainIgnoreFromCrashReporting>()` — manual logging bypasses the filter.

```dart
// good — boundary where guards don't reach
addDisposable(
  _service.stream().listen(
    _handleMessage,
    onError: (Object e, StackTrace st) {
      if (e is! IgnorableStreamException) logError(e, st);
      add(const .reconnect());
    },
  ),
);

// bad — guards/BaseBloc will catch this anyway
try {
  await _repo.fetch();
} catch (e, st) {
  logError(e, st);
  rethrow;
}
```

## Async-Gap Pitfalls

After `await`, the BLoC may have been disposed. **No manual `isClosed` guard is needed** — `BaseBloc.close()` swaps `appNavigator` / `toastService` to no-op implementations and cancels `addDisposable` subscriptions, while a stray post-close `emit` / `add` is silently dropped. See `widget-bloc.md` "No Manual isClosed Guards".

If the user navigates away during a long fetch, the resulting exception should not surface as an error toast. Cancel the in-flight Dio request via the repository's `CancelToken` where the request is long-lived.

## Anti-Patterns

- **`try { ... } catch (_) {}`** — silently swallows. If the failure really is benign, mark the exception type `DomainIgnoreFromCrashReporting` so the intent is documented and centralized.
- **`rethrow` after `logError`** — double-logs. Either log and stop, or rethrow and let the guard log.
- **Generic `Exception(message)` thrown from features** — the message is the only signal at the catch site; downstream code can't pattern-match. Use a typed sealed union.
- **Surfacing transient network failures as red error states without a retry affordance** — error states should offer a retry event.

## Checklist

- [ ] No manual `try/catch` in repository methods (use guards)
- [ ] No manual `try/catch` in BLoC handlers (let `BaseBloc` catch)
- [ ] All error states implement `BlocErrorStateInterface`
- [ ] Custom exceptions are sealed `@freezed` unions when they have multiple variants
- [ ] New `try/catch` blocks catch `Exception` (or bare `catch`), never a new `on Error catch`
- [ ] Control-flow exception classes carry `@Implements<DomainIgnoreFromCrashReporting>()`
- [ ] `logError` only at boundaries the guard chain doesn't cover
- [ ] No manual `isClosed` guards anywhere — `BaseBloc.close()` no-ops navigator/toast and drops post-close `add`/`emit`
