---
description: Rebuild scope, const constructors, builder-based lists, and the project-specific rebuild story given the ban on `buildWhen`/`listenWhen`.
paths: ["**/*_bloc.dart","**/*chart*.dart","**/*list*.dart","**/*_screen.dart","**/*_view.dart"]
---

# Performance Rules

## BLoC Granularity Replaces `buildWhen`

`buildWhen` / `listenWhen` are **banned** (see `widget-bloc.md` "State Access in Widgets"). The replacement is:

- **Split the BLoC** if one BlocBuilder is rebuilding for unrelated state changes. The rule of thumb: a state change should affect every widget under its `BlocBuilder` — if it doesn't, those widgets belong in a separate BLoC.
- **`BlocSelector`** for reading one field of a wide state shape: `BlocSelector<Bloc, State, Foo>(selector: (s) => s.data.foo, ...)`.
- **`BlocListener`** for fire-and-forget side effects — these never rebuild.

## Lists: `builder` over `children: [...]`

Never construct a long static list inside `Column(children: [...])` built from a collection. Use the lazy constructors:

- **Scrollable list**: `ListView.builder(itemCount, itemBuilder)` — builds only visible rows.
- **Scrollable list with dividers**: `ListView.separated(itemCount, itemBuilder, separatorBuilder)` — manual `if (i > 0) Divider()` is banned (see `widget-bloc.md` "Spacing and Layout").
- **Inside a CustomScrollView**: `SliverList.builder` / `SliverList.separated`.
- **Fixed-size grid known at compile time** (< ~10 items): `GridView(children: [...])` is fine.

## `RepaintBoundary` — Use Sparingly

Wrap a subtree in `RepaintBoundary` only when:

- It animates on its own clock (custom `AnimationController`, Lottie, etc.) and you can prove it triggers parent repaints during profiling.
- It contains a `CustomPaint` that paints non-trivial work and the parent rebuilds often (e.g. chart inside a list row).

**Don't sprinkle them** as "perf insurance" — every `RepaintBoundary` is itself a layer the compositor manages.

## State-Heavy Pages: Selector or Split

If a state has 8+ fields and one BlocBuilder reads it, every field change rebuilds the whole subtree. Two fixes:

1. **`BlocSelector`** at the leaf widget to read only the field that matters.
2. **Split the state into nested objects** (e.g. `state.formData`, `state.serverData`) so a leaf can `BlocSelector` on one nested object.

Splitting the BLoC is only needed when *unrelated user flows* live on the same state — not just because the state is wide.

## `setState` Scope

When ephemeral UI state is allowed (toggle a clear button, drive an opacity from scroll), `setState` MUST live on the **smallest** widget that owns it — never on a large parent. A `setState` on a screen-sized `StatefulWidget` rebuilds the whole subtree on every scroll tick.

```dart
// bad — every scroll frame rebuilds the entire screen
class _ScreenState extends State<_Screen> {
  double _opacity = 0;
  void _onScroll() => setState(() => _opacity = ...);
}

// good — extract the changing leaf; only it rebuilds
class _FadingHeader extends StatefulWidget { ... }
```

## Scoped `MediaQuery` Reads

**MUST read a single `MediaQuery` field via its scoped accessor** — `MediaQuery.viewInsetsOf(context)`, `.sizeOf`, `.paddingOf`, `.viewPaddingOf`. `MediaQuery.of(context)` subscribes to the whole `MediaQueryData`, so the widget rebuilds when *any* field changes (orientation, text scale, padding) even if you only used the keyboard inset.

```dart
// bad — rebuilds on every MediaQueryData change
final bottom = MediaQuery.of(context).viewInsets.bottom;
// good — rebuilds only when viewInsets changes
final bottom = MediaQuery.viewInsetsOf(context).bottom;
```

## Image Loading

Network images go through the shared image widget in `lib/ui_kit/widgets/` (see `ui-kit.md` "Images and Icons"), never a raw `Image.network` in feature code.

## Async Work in BLoC Constructors

Don't `await` in a BLoC constructor. BLoC construction must be synchronous so `AppBlocProvider` can register it before the screen builds. For "load on screen open", post `_InitEvent` from `AppBlocProvider.postCreate` (already the convention — see `widget-bloc.md`).

## Profiling

When you suspect a perf issue, prove it with `fvm flutter run --profile` and the timeline view — don't guess. Specifically:

- "Build" lane spikes ⇒ widget tree is rebuilding too widely → introduce `BlocSelector`, split BLoC, or fix missing `const`.
- "Raster" lane spikes ⇒ paint cost (shadows, blurs, large images) → `RepaintBoundary` may help.
- "Garbage collector" spikes ⇒ excessive allocations per frame (mappers running in `build`, anonymous lambdas in lists). See mapper rules in `widget-bloc.md`.

## Checklist

- [ ] All `const`-eligible widgets / `EdgeInsets` / `BorderRadius` literals are `const`
- [ ] No `buildWhen` / `listenWhen` — split BLoC or use `BlocSelector`
- [ ] Scrollable lists use `.builder` / `.separated`, not `[...for]`
- [ ] No `Container` when `Padding` / `ColoredBox` / `DecoratedBox` suffices
- [ ] `setState` lives on the smallest widget that owns the state, not a large parent
- [ ] Single `MediaQuery` fields read via `viewInsetsOf` / `sizeOf` / `paddingOf`, not `MediaQuery.of`
- [ ] No `await` in BLoC constructor; loading via `_InitEvent` in `postCreate`
- [ ] `RepaintBoundary` only justified by profiling evidence
