---
description: How `appNavigator` is wired through `BaseBloc` and the conventions for `Page` definitions and result piping.
paths: ["app/lib/core/navigation/**/*.dart","**/*_pages.dart","**/*_page.dart","**/*navigator*.dart"]
---

# Routing

All navigation goes through `appNavigator` in the BLoC. `appNavigator` is provided by `BaseBloc` via the `BaseBlocCallbacks` mixin (full inherited surface: `widget-bloc.md` § What `BaseBloc` Gives You).

The `AppNavigator` interface (`lib/core/navigation/`) exposes `push`, `pop`, `replace`, and `replaceAll`; `AppRootNavigator` implements it and is registered in `lib/di/navigation_module.dart`. Each feature defines its `Page` classes in `lib/features/<name>/<name>_pages.dart`; they extend the base classes in `lib/core/navigation/pages.dart`.

## Rules

- **NEVER** call `Navigator.of(context)`, `context.push()`, or `context.pop()` in widgets
- **NEVER** call `context.appNavigator.push(...)` / `context.appNavigator.pop(...)` from a widget either — `appNavigator` is a BLoC capability, not a widget one. A widget dispatches an event; the BLoC handler does the navigation. This includes back/exit actions: an `onExit`/`onBack` callback wired to a navigator pop is a violation — add a `.backPressed()` event and pop in its handler.
- **NEVER** use `showDialog()` or `showModalBottomSheet()` — create a page class and push via `appNavigator`
- Navigation always happens in BLoC handlers, not in widgets
- Use `unawaited()` for fire-and-forget push calls
- Use `await appNavigator.push(Page())` when expecting a return value

## Page Types

| Type | Use for |
|------|---------|
| `AdaptivePage<T>` | Standard screen (Material on Android, Cupertino on iOS) |
| `ModalBottomSheetPage<T>` | Bottom sheet with result passing |

Both extend `PageWithPopResult<T>`. Generic `T` is the return type (`void` for no result). Encode `T` in the page class to enable type-safe result passing.

## Page Return Type MUST Be Nullable

**MUST declare every page result generic as nullable (`T?`)** — never `T`.

A page can be dismissed without producing a result: back-button gesture, swipe-to-dismiss on a sheet, system pop, or `appNavigator.pop()` called with no argument. In all of these, the completer resolves with `null`. If the generic is declared as a non-nullable `T`, the resolved value still arrives as `null` at the call site (`Future<T?> get result`), but the page type lies about what `pop()` accepts and confuses readers about whether the caller must handle dismissal.

```dart
// bad — type claims a List is always returned, but back-gesture pops null
class FilterSheetPage extends ModalBottomSheetPage<List<Filter>> { ... }

// good — type matches reality: result may be null on dismissal
class FilterSheetPage extends ModalBottomSheetPage<List<Filter>?> { ... }
```

This applies to every page generic: `AdaptivePage<T>`, `ModalBottomSheetPage<T>`.

**Exception:** pages with no result use `void` (or omit the generic), e.g. `class CatalogPage extends AdaptivePage` — `void` is not made nullable.

## Navigation Patterns

```dart
// Push — fire and forget
_NavigateEvent e => unawaited(appNavigator.push(SomePage())),

// Push — await result
Future<void> _handlePickEvent(Emitter<State> emit, _PickEvent event) async {
  final result = await appNavigator.push(PickerSheetPage());
  if (result != null) { /* use result */ }
}

// Replace — no back stack entry
_ResetEvent() => appNavigator.replace(const CatalogPage()),

// Pop without result
_BackEvent() => appNavigator.pop(),

// Pop with result
_ConfirmEvent e => appNavigator.pop(e.selectedItem),
```

## Result Passing

1. `PageWithPopResult<T>` has an internal `Completer<T?>`
2. `push()` returns `Future<T?>` from the completer
3. `pop(result)` completes it
4. Destination BLoC dispatches a `back({T? value})` event — widget never pops directly

## Don't Store Pass-Through Fields on Page Classes

**A `Page` class MUST NOT store a `final` field whose only use is forwarding it into the child widget or `super` constructor.** Pass the value directly as a constructor argument — storing it bloats the page class and adds a stale-field risk when the child's API changes.

```dart
// bad — field stored only to forward into buildContent
class StrollerDetailPage extends AdaptivePage<void> {
  final String strollerId;
  const StrollerDetailPage({required this.strollerId});

  @override
  Widget buildContent(_) => StrollerDetailScreen(strollerId: strollerId);
}

// good — private positional field, read where the child is built
class StrollerDetailPage extends AdaptivePage<void> {
  const StrollerDetailPage(this._strollerId);
  final String _strollerId;

  @override
  Widget buildContent(_) => StrollerDetailScreen(strollerId: _strollerId);
}
```

Exception: store the field when it is also needed for page identity / equality, used in `key:`, or read in more than the child-building method.

## Key Pages By Entity Id

A page carrying a transient entity arg (e.g. an id-scoped BLoC param) MUST use `ValueKey('PageName:$id')`, not a shared `const ValueKey('PageName')`. On a rapid `replace` ping-pong between two instances of the same page, Flutter's `Page.canUpdate` (runtimeType + key) reuses a still-disposing same-key route for a lazy `AppBlocProvider`, whose deferred `create` then resolves the BLoC with a stale or null `param1` and throws a null-cast `TypeError`. Keep `const` keys for root pages, list/filter pages, and callback/bloc-only sheets where in-place reuse is wanted; a nullable id falls back to `const` (no bang operator) — never key by PII.

## Common Mistakes

| Mistake | Fix |
|---------|-----|
| `Navigator.of(context).push()` in widget | Dispatch BLoC event; BLoC calls `appNavigator.push()` |
| `Navigator.of(context).pop()` in widget | Add `back({T? value})` event; BLoC calls `appNavigator.pop(value)` |
| `showDialog()` / `showModalBottomSheet()` | Create page class, push via `appNavigator` |
| Raw `BlocProvider` | Use `AppBlocProvider` for DI integration |
| Forgetting `unawaited()` on fire-and-forget | Wrap with `unawaited()` if not awaiting result |
