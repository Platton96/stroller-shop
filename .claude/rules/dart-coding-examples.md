---
description: Worked good/bad code examples for each rule in dart-coding.md — comments, dot shorthand, conditionals, pattern matching, and the rest of the universal Dart conventions.
paths: ["**/*.dart"]
---

# Dart Rules — Worked Examples

Companion to `.claude/rules/dart-coding.md`. Each section is the canonical good/bad code for the identically-named rule there.

## Comments

```dart
// bad — an explanatory comment the user never asked for
// Cart totals are recalculated whenever the list changes.
final total = items.fold(0, (sum, item) => sum + item.price);
// good — no comment; `total` and `fold` already carry the meaning
final total = items.fold(0, (sum, item) => sum + item.price);
```

## Dot Shorthand

```dart
// Switch subject and comparisons
switch (status) { case .active: ...; case .archived: ...; }
if (order.status == .active) ...
// Named parameters
Column(crossAxisAlignment: .start, children: [...]);
Padding(padding: const .all(16), child: child);
Padding(padding: const .symmetric(horizontal: 16), child: child);
// Positional parameters of typed APIs — the pattern most easily missed
bloc.add(const .linkCopied());
emit(.loaded(items: items));
// Named constructors and static factories of the contextual type
decoration: BoxDecoration(border: .all(color: colors.borderRegular), borderRadius: .circular(12));
```

## Conditionals

```dart
// Ternary for same-method calls
context.read<CatalogBloc>().add(
  query.isEmpty ? const .clearFilter() : .applyFilter(query: query),
);
```

```dart
// bad — the same labels.add(Label(...)) in every branch; only `text` varies
if (group.isFull) {
  labels.add(Label(text: everyDay, from: open, to: close));
} else if (first == last) {
  labels.add(Label(text: first, from: open, to: close));
} else {
  labels.add(Label(text: '$first-$last', from: open, to: close));
}
// good — hoist the one varying value, add once
final text = switch (group) {
  _ when group.isFull => everyDay,
  _ when first == last => first,
  _ => '$first-$last',
};
labels.add(Label(text: text, from: open, to: close));
```

```dart
// good — identical emit repeated across sibling handlers → one shared private helper
void _handleItemAddedEvent(Emitter<CartState> emit, ItemAdded event) {
  items.add(event.item);
  _emitLoaded(emit);
}

void _handleItemRemovedEvent(Emitter<CartState> emit, ItemRemoved event) {
  items.remove(event.item);
  _emitLoaded(emit);
}

void _emitLoaded(Emitter<CartState> emit) =>
    emit(.loaded(items: List.of(items), total: _total));
```

```dart
// bad — hoisting the shared emit past a try whose success path falls through
Future<void> _handleAddEvent(Emitter<CartState> emit, Add event) async {
  try {
    await _repository.add(event.item);
    emit(.added()); // success path has no return — it falls through
  } on Exception {
    // each catch previously ended with emit(.loaded(...))
  }
  // now fires after a successful add too, clobbering .added() with a stale .loaded
  emit(.loaded(items: List.of(items), total: _total));
}
// good — leave the emit in each catch clause; the try's fall-through makes hoisting unsafe
```

## Pattern Matching

```dart
// bad — manual type checks and field access in the body
if (s is Circle) return 'r=${s.radius}';
if (s is Square) return 'l=${s.length}';
// good — switch expression on a sealed type, destructured inline
String describe(Shape s) => switch (s) {
  Circle(:final radius) => 'r=$radius',
  Square(:final length) => 'l=$length',
};
// good — destructure at the boundary; guard for what patterns can't express
if (json case {'user': [final String name, final int age]}) bloc.add(.userParsed(name: name, age: age));
final label = switch (order) { Order(:final total) when total <= 0 => emptyLabel, Order(:final total) => '$total' };
```

## Enum Mappings

```dart
enum StrollerKind {
  lightweight(Icons.directions_walk), allTerrain(Icons.terrain);
  const StrollerKind(this.icon);
  final IconData icon;
  String title(S l10n) => switch (this) { .lightweight => l10n.kindLightweight, .allTerrain => l10n.kindAllTerrain };
}
```

## Prefer `firstOrNull` / `lastOrNull`

```dart
final first = items.firstOrNull;            // not items.first
expect(items.firstOrNull?.title, 'Widget'); // not items.first.title
```

## No Bang Operator

```dart
// Single nullable
if (overlayEntry case final overlayEntry?) overlayEntry.markNeedsBuild();
// In the widget tree / conditional spread
subtitle: if (user.email case final email?) Text(email) else null,
// Multiple nullable fields at once
if (formData case FormData(:final email?, :final name?)) bloc.add(.submit(email: email, name: name));
```

## No `late final` for Constructor-Derived Fields

```dart
// bad — `late` implies deferred init
late final _paint = Paint()..color = color;
MyPainter(this.color);
// good — initializer list
final Paint _paint;
MyPainter(this.color) : _paint = Paint()..color = color;
```

## Tail-Call Futures

```dart
Future<void> saveTheme(AppTheme theme) => _prefs.setString(_key, theme.name);
// not: Future<void> saveTheme(...) async => await _prefs.setString(...);

Future<bool> compare(Uint8List bytes, Uri target) async {
  final existing = await readHash(target);
  return await parentComparator.compare(bytes, target);
}
```

## No `Future<void>` Without `await`

```dart
void _handleEditEvent(...) => emit(.editing(...)); // not: Future<void> ... async =>
```

## Expression Bodies

```dart
VM toVM(Domain d) => VM(id: d.id, ...); // not: { return VM(...); }
```

## No Single-Use Wrapper Variables

```dart
// bad — what are $1/$2?
doThing(result.$1, result.$2);
// good — names restored by destructuring
final (:balance, :tasks) = summary;
```

## Filtering: `where` Over Collection-`for`

```dart
// bad — filter hidden inside a comprehension
[for (final p in products) if (p.isAvailable) p.title];
// good — intent reads left to right
products.where((p) => p.isAvailable).map((p) => p.title).toList();
// good — negated predicate without the lambda
products.whereNot((p) => p.isAvailable).toList();
```

## Pre-Initialized Maps for Closed Key Sets

```dart
final Map<Tab, Selection> _byTab = {for (final tab in Tab.values) tab: Selection.empty(tab)};
Selection forTab(Tab tab) => _byTab[tab] ?? Selection.empty(tab);
void clear() { for (final tab in Tab.values) _byTab[tab] = Selection.empty(tab); }
```

## Money, Numbers and Dates

```dart
// bad — unit interpolated by hand
Text('$price BYN')
// good — one l10n message owns the format
Text(S.of(context).priceByn(price))
```

## No Duplicate Models

```dart
// bad — new model mirrors fields OrderFilter already carries, needs a toX() converter
final picked = await sheet.show(state.toPeriodSelection());
// good — pass the existing type directly
final picked = await sheet.show(state.filter);
```

## Boolean Naming

```dart
// bad — noun reads like data; double prefix reads wrong
final bool paidStorage;
final bool isHasDivider;
// good
final bool isPaidStorage;
final bool hasDivider;
```

## Prefer Tear-Offs Over Lambdas

```dart
onPressed: controller.clear, // not: () => controller.clear()
```
