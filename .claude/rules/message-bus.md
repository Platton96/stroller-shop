---
description: When to use `MessageBus` for cross-BLoC / cross-feature communication and when direct repository calls or navigation results are better.
paths: ["**/*message_bus*.dart","**/messages/**/*.dart","**/*_message.dart","**/*_messages.dart"]
---

# MessageBus Rules

`MessageBus` lives in `lib/core/message_bus/message_bus.dart` (`Message`, `ValueMessage<T>`).

## When to Use

- Cross-feature BLoC communication (features that should not reference each other)
- One-to-many notifications (one action triggers multiple BLoC updates)
- Splitting a BLoC (new BLoC sends messages the original listens to)

**Do NOT use when:**
- Same widget tree (`context.read<OtherBloc>().add(...)`)
- Parent-to-child (constructor params)
- Ephemeral UI state (keep in widget State)
- **Modal/sheet returning data to its opener** — use `appNavigator.pop(value)` and let the caller `await push()`. MessageBus broadcasts to anyone listening; pop targets the one consumer that asked. A confirmation/edit sheet that wants to inform its opener of the new value should pop the value, not send a `XxxUpdatedMessage`.

## Message Classes

Messages live in `lib/features/<name>/messages/` or a single `<x>_message.dart` of the producing feature.

- Payload → extend `ValueMessage<T>` (access via `.value`)
- Signal-only → implement `Message`
- Naming: `<Action><Subject>Message` (e.g., `ItemSelectedMessage`)
- MUST use `const` constructors

```dart
class ItemSelectedMessage extends ValueMessage<Item> {
  const ItemSelectedMessage(super.value);
}

class FilterClearedMessage implements Message {
  const FilterClearedMessage();
}

// bad — a signal that always carries the same payload is not a ValueMessage
class FilterClearedMessage extends ValueMessage<bool> {
  const FilterClearedMessage() : super(true);
}
```

A message whose payload is a constant (always `true`, always the same enum) carries no information — implement `Message`. Use `ValueMessage<T>` only when consumers read a value that actually varies.

## Access

**MUST use the inherited `messageBus` field from `BaseBloc`** (`BaseBlocCallbacks`) — never inject `MessageBus` through a BLoC constructor. (Full inherited surface: `widget-bloc.md` § What `BaseBloc` Gives You.)

```dart
// bad — constructor injection duplicates what BaseBloc already provides
class CartBloc extends BaseBloc<CartEvent, CartState> {
  final MessageBus _messageBus;
  CartBloc(this._messageBus) : super(const .initial());
}

// good — use the inherited field
class CartBloc extends BaseBloc<CartEvent, CartState> {
  CartBloc() : super(const .initial());

  void _notify(Item item) => messageBus.send(ItemSelectedMessage(item));
}
```

Exception: non-BLoC classes (repositories, coordinators) that need the bus still take it via DI constructor injection.

## Producer Pattern

**Update own state first**, then send message:

```dart
emit(.idle(data: state.data.copyWith(selectedItem: event.item)));
messageBus.send(ItemSelectedMessage(event.item));
```

## Consumer Pattern

- **`addDisposable()`** to register subscription for cleanup
- **Convert messages to internal events** — never emit directly in listener
- Subscribe in the constructor, before the `on<Event>()` registrations (see `widget-bloc.md` "BLoC Constructor Order")

```dart
addDisposable(
  messageBus.stream<ItemSelectedMessage>().listen(
    (message) => add(.itemSelected(item: message.value)),
  ),
);
```

## Testing

Use a **real `MessageBus`** (not a mock) — `setUpTestInfrastructure()` (`app/test/helpers/test_infrastructure.dart`) wires one into `BaseBlocCallbacks`. Drive the BLoC by sending real messages on it. Close the BLoC before disposing the bus in `tearDown`.

```dart
test('reacts to selection', () async {
  final bloc = CartBloc();
  messageBus.send(ItemSelectedMessage(testItem));
  await pumpEventQueue();
  ...
});
```
