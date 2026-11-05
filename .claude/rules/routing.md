---
description: GoRouter setup, how `appNavigator` wraps it for BLoCs, route paths, sheets and result passing.
paths: ["app/lib/core/navigation/**/*.dart","app/lib/app/app_router.dart","**/*navigator*.dart","**/*_routes.dart"]
---

# Routing

Navigation is [`go_router`](https://pub.dev/packages/go_router) — no hand-written `Navigator 2.0` page stack.

| Piece | Where |
|---|---|
| Route table (`createAppRouter()`, every `GoRoute`) | `lib/app/app_router.dart` |
| Path constants and builders (`AppRoutes`) | `lib/core/navigation/app_routes.dart` |
| `AppNavigator` interface — `push`, `showSheet`, `pop` | `lib/core/navigation/app_navigator.dart` |
| `GoRouterAppNavigator` (implementation) | `lib/core/navigation/go_router_app_navigator.dart` |
| DI: `GoRouter` + `AppNavigator` singletons | `lib/di/navigation_module.dart` |

`MaterialApp.router(routerConfig: router)` mounts it. BLoCs reach it through the inherited `appNavigator` field (`widget-bloc.md` § What `BaseBloc` Gives You).

## Rules

- Navigation happens in BLoC handlers only: a widget dispatches an event, the handler calls `appNavigator`.
- **NEVER** call `context.go()`, `context.push()`, `context.pop()`, `GoRouter.of(context)` or `Navigator.of(context)` in widgets — back/close buttons dispatch a `.backPressed()` event.
- **NEVER** call `showModalBottomSheet()` / `showDialog()` from a widget — the BLoC calls `appNavigator.showSheet(...)`.
- **NEVER** build a location string inline (`'/strollers/$id'`) — add a builder to `AppRoutes` and use it in both the `GoRoute` and the BLoC.
- Screens take route parameters through their constructor; the `GoRoute.builder` reads `state.pathParameters` and passes them in. A screen never reads `GoRouterState`.
- Use `unawaited()` for fire-and-forget pushes; `await` when a result is expected.

## Adding a Screen

1. Path constants/builder in `AppRoutes`.
2. A `GoRoute` in `createAppRouter()` (nested under its parent so back navigation has a parent).
3. The BLoC pushes `AppRoutes.<screen>(...)`.

```dart
abstract final class AppRoutes {
  static const strollerDetailsPath = 'strollers/:strollerId';
  static const strollerIdParameter = 'strollerId';

  static String strollerDetails(String strollerId) => '/strollers/$strollerId';
}

GoRoute(
  path: AppRoutes.strollerDetailsPath,
  builder: (_, state) => StrollerDetailsScreen(
    strollerId: state.pathParameters[AppRoutes.strollerIdParameter] ?? '',
  ),
),

void _handleStrollerPressedEvent(Emitter<CatalogState> emit, _StrollerPressedEvent event) =>
    unawaited(appNavigator.push<void>(AppRoutes.strollerDetails(event.strollerId)));
```

## Sheets and Results

Bottom sheets are not routes: `appNavigator.showSheet<T>(builder)` opens a modal sheet on the router's root navigator and returns `Future<T?>`. The sheet's own BLoC closes it with `appNavigator.pop(value)`.

```dart
Future<void> _handleSortPressedEvent(Emitter<CatalogState> emit, _SortPressedEvent event) async {
  final selectedSort = _data.filter.sort;
  final sort = await appNavigator.showSheet<StrollerSort>(
    (_) => SortSheet(selectedSort: selectedSort),
  );
  if (sort != null && sort != _data.filter.sort) { ... }
}

void _handleSortSelectedEvent(Emitter<SortSheetState> emit, _SortSelectedEvent event) =>
    appNavigator.pop(event.sort);
```

The result is always nullable: a swipe-down, the back gesture or `pop()` without an argument completes it with `null`.

## Testing

`setUpTestInfrastructure()` wires a mock `AppNavigator`. Assert the exact location: `verify(() => testAppNavigator.push<void>(AppRoutes.strollerDetails('s1'))).called(1)`.

## Common Mistakes

| Mistake | Fix |
|---------|-----|
| `context.push('/strollers/$id')` in a widget | Dispatch an event; the BLoC calls `appNavigator.push(AppRoutes.strollerDetails(id))` |
| `Navigator.of(context).pop()` in a widget | `.backPressed()` event; the BLoC calls `appNavigator.pop()` |
| `showModalBottomSheet()` in a widget | `appNavigator.showSheet(...)` in the BLoC |
| Hard-coded path string in a BLoC | Builder in `AppRoutes` |
| Raw `BlocProvider` | `AppBlocProvider` for DI integration |
