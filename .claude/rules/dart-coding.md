---
description: Universal Dart conventions for this repo — comments, control flow, formatting, idioms. No `paths:` key, so it loads every session; keep it lean and universal. Narrow/layer-specific rules live in other `.claude/rules/*.md` files scoped with a `paths:` key.
---

# Dart Rules

> Canonical code examples live in `.claude/rules/dart-coding-examples.md` — loads when you touch a `.dart` file (its `paths:` frontmatter matches `**/*.dart`). This file is normative; that one is illustrative.

> `paths:`-scoped rules load on a **read** of a matching file, not on `Write` of a brand-new one — before creating a new file of a kind covered by `.claude/rules/*.md`, read the applicable rule file first.

> The Flutter app lives in `app/`. Run `fvm` commands from there: `fvm flutter analyze`, `fvm flutter test`, `fvm dart format lib test`, `fvm dart run build_runner build`.

## Comments

**MUST NOT write any comment** unless the user explicitly asks for one. Names and types are the documentation. Applies to **every file the repo ships — Dart, YAML, shell, config**. No carve-outs: no WHAT, no WHY (hidden invariants, platform bugs, ordering constraints — leave them uncommented), no multi-line explanatory blocks, no section-divider banners (`// — Mappers —`), no ticket IDs, no caller citations ("used by X").

Same for `toString()` and exception messages: no ticket numbers, no developer hints — the class name carries the meaning. In tests, the `test()` description is the comment; the body carries no `//`.

**Exception:** the user's request literally asks for a comment — then exactly what was asked, one short line unless they ask for more.

## Class Member Ordering

Strict sequence: 1. static constants/fields → 2. instance fields (constant → private → public; **all above constructor**) → 3. constructor(s) → 4. getters/setters (public → private; **above all methods**) → 5. public methods (incl. `@override`; State lifecycle: `initState` → `build` → `dispose`) → 6. protected → 7. private.

**Fields always open the class body, the constructor comes right after them** — in every class, mixin and enhanced enum: widgets, BLoCs, repositories, mappers, mediators. The `sort_constructors_first` lint enforces the opposite order and is deliberately off in `analysis_options.yaml`; never re-enable it.

```dart
// bad — constructor above the fields
class CartBloc extends BaseBloc<CartEvent, CartState> {
  CartBloc(this._cartRepository) : super(const .initial());

  final CartRepository _cartRepository;
}

// good
class CartBloc extends BaseBloc<CartEvent, CartState> {
  final CartRepository _cartRepository;

  CartBloc(this._cartRepository) : super(const .initial());
}
```

Not for generated or test files.

## Top-Level Declaration Ordering

**Public declarations before private ones.** The exported class/function goes at the top; private helpers (`_Foo`, private widgets, sealed row/state holders) below it. File-level `const`/`final`/`typedef`s used by the public API may stay at the very top. Not for generated or test files.

## Dot Shorthand

**MUST use dot shorthand** (`.value` not `EnumType.value`) for enums, named constructors, and static factories (`Border.all` → `.all`, `BorderRadius.circular` → `.circular`).

## EdgeInsets

Use the most concise constructor: `.all(n)` → `.symmetric(h, v)` → `.only(...)`.

## Conditionals

- Mutually exclusive conditions → `if/else if/else`, not sequential `if (...) return`.
- Divergent branches with different side effects → extract each into a named private method.
- **Same call in 2+ branches differing in one argument → hoist the varying value, call once.** Applies to any repeated call — constructor, factory, widget, `emit(...)`, `list.add(...)`, an `S.of(context).xxx` string. Two branches → ternary on the varying arg; 3+ branches or a `switch` → assign the varying value(s) per branch (a `switch` expression yielding a record when several args vary), then one call after. A repeated widget subtree → extract a private `StatelessWidget`, not a build-method helper. A widget whose look differs per branch in several values (alignment, color, radius, text style) → a private widget with those values as parameters, constructed once per `switch` arm — not a `switch` destructured into a multi-value record. Duplication spanning **sibling methods** (e.g. the same `emit(.loaded(...))` in four handlers) → extract one private helper they all call.
- **MUST NOT hoist a shared call past control flow that changes when it runs** — a `return`/`break`/`continue` in one branch, or a `try` block whose success path falls through into the code you would hoist below. Collapse only when every branch reaches the single call on every path with identical timing/side-effects; otherwise leave the calls in place.
- No inverted guard before a long main path: a one-statement early-exit is fine; if the main path is the long branch, use `if (ready) { main() } else { recover() }`.

## Pattern Matching

Prefer patterns over manual checks and indexing.

- Producing a value → **switch expression** (single-expression arms, exhaustive, no fallthrough). Side effects only → switch statement.
- **Destructure at the match site** (object/record/list/map patterns, `:var name`) instead of `.field`/`[i]` in the body.
- **Sealed types for ADTs** — drop the `default`/`_` arm so new subtypes surface as analyzer errors.
- Ranges/multi-match/guards: relational (`>= n`), logical-or (`a || b`), `when` only for what patterns can't express.
- Avoid heavy multi-field destructuring repeated across arms — if the body needs one or two fields, match the type and read `.field`.

Not for trivial 2-branch booleans where `if/else` reads cleaner. For nullable promotion see [No Bang Operator](#no-bang-operator).

## Sealed Variant Over Readiness Flag

**MUST model "placeholder vs real value" as a sealed-union variant** (`.dummy()` / `.value(...)`), not an `isReady` bool beside the data or a nullable field — a flag and its data can drift; a variant makes the illegal state unrepresentable. Not when the bool *is* the domain value (`isEnabled`). Example: `widget-bloc.md`.

## ValueSetter / ValueGetter Typedefs

**MUST use** `ValueSetter<T>` / `ValueChanged<T>` / `ValueGetter<T>` / `VoidCallback` instead of explicit function types for single-argument callbacks. Not for multi-argument or named-parameter callbacks.

## Enum Mappings

- **MUST use enums**, not magic strings, for finite value sets.
- **MUST use extensions** on enums, not `_getXFromEnum()` helpers. UI extensions (importing `material.dart`) live in the feature's `extensions/`, named `<Type>Extension`.
- Prefer enhanced enums with constructor params for compile-time constant data (colors, sizes, icons); getters only for runtime values (localized strings) or methods with parameters.

## Prefer `firstOrNull` / `lastOrNull`

**MUST use `firstOrNull` / `lastOrNull`** instead of `.first` / `.last` — `.first` on an empty iterable throws. Exception: immediately after `expect(items, hasLength(n))` with `n >= 1`.

## No Bang Operator

**MUST NOT use `!`** — use `if-case` or pattern matching to promote nullable values. Exceptions: a `late final` field always initialized before use, generated code.

## No `late final` for Constructor-Derived Fields

**MUST NOT use `late final`** for fields derived from constructor parameters — use the constructor initializer list. `late` implies deferred initialization.

## Tail-Call Futures

An `async` method whose only `await` is the tail call **MUST drop `async` and return the future directly** — `Future<T> f() => g();`, not `Future<T> f() async => await g();`. This is what `async_return_with_no_await` asks for: the lint rejects `return someFuture;` *inside an `async` body*, and dropping `async` removes the body, so the two agree.

Keep `async` and write `return await ...` only when the body genuinely needs it: another `await` earlier, a `try/catch` around the call, a bare `return;` on some path (legal in `Future<void>` only when `async`), or later logic using the result.

## No `Future<void>` Without `await`

A handler with no `await` drops `async`/`Future<void>` and becomes `void`. The `on<Event>` registrar accepts both.

## Expression Bodies

Single-expression methods/getters MUST use `=>`, not a block with a single `return`. Not when the body has multiple statements, a `try/catch`, or a local `final` kept for readability.

**Exception — widget `build` methods.** Every `build` (`StatelessWidget`, `State`, any widget class) MUST use a block body with `return`, even when it is a single expression. A local `final` or a `debugPrint` can then be added without reshaping the whole method, and every widget reads the same way. The `prefer_expression_function_bodies` lint is off for this reason; never re-enable it. Builder callbacks passed as arguments (`builder: (context, state) => ...`) stay `=>`.

```dart
// bad
@override
Widget build(BuildContext context) => Text(title);

// good
@override
Widget build(BuildContext context) {
  return Text(title);
}
```

## No Single-Use Wrapper Variables

Inline expressions used only once, unless: used 2+ times, captures a value before an async gap, or inlining hurts readability.

Use `mapIndexed()` / `expandIndexed()` (`package:collection`) instead of `.asMap().entries.map()` or `.indexed`.

Never read record fields positionally (`pair.$1`) — destructure to named locals at the boundary.

## Collections: `map` / `where` Over Collection-`for`

**MUST build a list from another collection with `map` (spread it with `...` when it sits beside fixed elements), not a collection-`for`.** This holds for widget `children:` / `slivers:` too — `children: types.map((type) => Chip(type)).toList()`, and `children: [header, ...types.map(...)]` when fixed elements are interleaved. Reach for `mapIndexed` when the index is needed, and extract a named private method (`_toChip`) instead of an inline closure once the body spans more than a few lines.

**MUST use `where` / `whereNot` (then `map`)** instead of a collection-`for` with a nested `if` when building a filtered list. Use `whereNot(predicate)` over `where((e) => !predicate(e))`.

Collection-`for` stays only where `map` cannot express the shape: a `for` inside a collection *literal* that also spreads several sources, a `for` producing map entries (`{for (final stroller in strollers) stroller.id: stroller}`), or a statement-level loop with side effects.

## Pre-Initialized Maps for Closed Key Sets

When a `Map<K, V>` is keyed by a closed set (an enum) and every key has a valid default, **pre-populate every entry at construction** so call sites drop their `?? fallback`; `clear()` resets to defaults, not empty. Use `?? default` (not `!`) at the lookup — pre-seeding makes the fallback unreachable. Not for open-ended keys or when a missing key is meaningful.

## Freezed Only for BLoC State and Domain Models

**MUST NOT use `@freezed` for serialized data classes** — DTOs, request bodies, and API response objects (`lib/services/**`) are plain classes with a Dart primary constructor plus `@JsonSerializable`. Freezed stays for BLoC states/events, `*_vm.dart` view models, and domain models in `lib/objects/`, where generated `copyWith`/`==` drive rebuild dedup. DTOs carry no value equality by design. Details: `data-layer.md`.

## No Duplicate Models

**MUST NOT create a model duplicating an existing type's fields** without adding an invariant, method, or genuine semantic distinction — a name-only wrapper forces conversions and inflates generated code. Reuse the existing type.

## Money, Numbers and Dates

**MUST format money through the l10n messages** `priceByn` / `priceApproxByn` (which use the `intl` decimal pattern) — `S.of(context).priceByn(price)`. Never interpolate the unit by hand (`'$price BYN'`), and never hardcode a locale in `NumberFormat`/`DateFormat`. Format at the widget layer (where `BuildContext` exists), not inside BLoCs or repositories.

## No Redundant Type Annotations

Omit the type on `final`/`var`/`const` when the initializer states it (constructor call, typed literal, `as` cast). Keep it for uninitialized fields, `late`, parameters, return types, or when the declared type is a supertype — and also when a `switch`/ternary initializer relies on the declared type to resolve [dot shorthand](#dot-shorthand) (`.value`) in its arms/branches: keep the annotation and the shorthand, don't spell out the full type at each arm instead. `omit_local_variable_types` doesn't know about this dot-shorthand dependency and will flag the kept annotation as redundant — silence it with `// ignore: omit_local_variable_types` on the line above rather than dropping the annotation.

## Boolean Naming

**Prefix every `bool` with `is` / `has` / `can` / `should`** (field, getter, parameter, local). `is` = condition, `has` = ownership, `can`/`should` = capability/intent; `was*` for BLoC completed-action fields (`widget-bloc.md`). Never stack prefixes.

## Prefer Tear-Offs Over Lambdas

**MUST pass a method tear-off** when a callback forwards the same arguments with no extra logic. Not when the lambda reshapes arguments, wraps the call in a `const` event, or closes over locals.

## Identifier Naming

**Spell out identifiers in full** — no `_NavBody`/`cfg`/`mgr`/`btn`. Exception: universal abbreviations (`id`, `url`, `vm`, `dto`, `api`, `ui`) and SDK-defined names (`onTap`).

## Generated Files

Never edit `*.freezed.dart`, `*.g.dart`, `*.config.dart`, or `lib/l10n/generated/*` — a PreToolUse hook blocks it. Regenerate with `fvm dart run build_runner build` (run from `app/`); ARB changes via `fvm flutter gen-l10n`.
