---
description: When to use a `Mediator<T>` for cross-BLoC / cross-feature communication and when direct repository calls or navigation results are better.
paths: ["**/mediators/**/*.dart","**/*_mediator.dart","app/lib/core/mediator/**/*.dart"]
---

# Mediator Rules

`Mediator<T>` lives in `lib/core/mediator/mediator.dart`: a broadcast `StreamController<T>` with `stream`, `notify(value)` and an `@disposeMethod close()`. There is no global message bus — every channel between BLoCs is its own typed mediator.

## When to Use

- Cross-feature BLoC communication (features that should not reference each other's BLoCs)
- One-to-many notifications (one action updates several BLoCs)

**Do NOT use when:**
- Same widget tree (`context.read<OtherBloc>().add(...)`)
- Parent-to-child (constructor params)
- Ephemeral UI state (keep in widget State)
- Shared data that a repository already owns — expose a `watch*()` stream on the repository instead
- **Modal/sheet returning data to its opener** — `await appNavigator.showSheet(...)` and pop the value (`routing.md`). A mediator broadcasts to every listener; a pop result reaches only the caller that asked.

## Declaring a Mediator

One class per channel, a one-line subclass that only fixes the type, registered as `@lazySingleton`. It lives in `lib/features/<name>/mediators/<subject>_mediator.dart` of the feature that **consumes** the notification.

- Naming: `<Action><Subject>Mediator` (`OpenTabMediator`, `AskAssistantMediator`)
- The payload is the domain value itself (`Mediator<AppTab>`, `Mediator<Stroller>`) — no wrapper message classes
- Signal-only channel → `Mediator<void>` and `notify(null)`

```dart
@lazySingleton
class OpenTabMediator extends Mediator<AppTab> {}

// bad — a wrapper class around the payload
class OpenTabMessage {
  final AppTab tab;
  const OpenTabMessage(this.tab);
}
class OpenTabMediator extends Mediator<OpenTabMessage> {}
```

## Access

**MUST inject the mediator through the BLoC constructor** like any other dependency — `BaseBloc` exposes no messaging field.

```dart
@injectable
class CartBloc extends BaseBloc<CartEvent, CartState> {
  final CartRepository _cartRepository;
  final OpenTabMediator _openTabMediator;

  CartBloc(this._cartRepository, this._openTabMediator) : super(const .initial()) { ... }

  void _handleCatalogPressedEvent(Emitter<CartState> emit, _CatalogPressedEvent event) =>
      _openTabMediator.notify(.catalog);
}
```

## Producer Pattern

**Update own state first**, then notify:

```dart
emit(.idle(data: state.data.copyWith(selectedItem: event.item)));
_itemSelectedMediator.notify(event.item);
```

## Consumer Pattern

- **`addDisposable()`** registers the subscription for cleanup
- **Convert the value into an internal event** — never emit directly in the listener
- Subscribe in the constructor, before the `on<Event>()` registrations (`widget-bloc.md` "BLoC Constructor Order")
- The listener is a `_handle<Thing>` tear-off taking the payload

```dart
addDisposable(_openTabMediator.stream.listen(_handleOpenTab));

void _handleOpenTab(AppTab tab) => add(.tabSelected(tab: tab));
```

## Testing

Use a **real mediator instance** (not a mock): construct it in `setUp`, pass it to the BLoC, drive the BLoC with `mediator.notify(value)` and assert outgoing notifications by listening to `mediator.stream`. Close it in `tearDown`.

```dart
blocTest<AssistantBloc, AssistantState>(
  'asks about a stroller from details',
  build: createBloc,
  act: (_) => askAssistantMediator.notify(stroller),
  verify: (_) => verify(() => repository.sendMessage(...)).called(1),
);
```
