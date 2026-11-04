---
description: When to add `Semantics`, `MergeSemantics`, and `ExcludeSemantics`; how to label tappable widgets so screen-readers work.
paths: ["**/*_screen.dart","**/*_view.dart","**/*_page.dart","app/lib/features/**/widgets/**/*.dart","app/lib/ui_kit/**/*.dart"]
---

# Semantics Rules

## Core Concept

`label` is the localized string read by screen readers (TalkBack/VoiceOver). It MUST come from `S.of(context)` — never a hardcoded literal (`localized-strings.md`).

## Built-in Properties First

Prefer a widget's own built-in semantics property (e.g. `Text.semanticsLabel`, `Icon.semanticLabel`) over wrapping it in `Semantics`. Wrap in `Semantics` when: there is no built-in property, you need multiple properties, or you need grouping.

## Slivers

**MUST use `SliverSemantics`** (not `Semantics`) for slivers — `Semantics` is `RenderBox`-based and causes runtime errors.

```dart
SliverSemantics(
  label: S.of(context).productListLabel,
  sliver: SliverList(...),
)
```

## `container: true` Merges Children

On iOS, `container: true` merges all children's semantics into the parent. Do NOT use when children are independently interactive.

## Tappable Widgets

**Use single `Semantics`** with both `label` and `onTap`/`button`. Never nest separate `Semantics`.

```dart
Semantics(
  label: S.of(context).openProductLabel(title: vm.title),
  button: true,
  onTap: onTap,
  excludeSemantics: true,
  child: InkWell(onTap: onTap, child: ...),
)
```

## Required Semantics

| Widget type | Properties |
|-------------|------------|
| Interactive (buttons, inputs, toggles) | `label` (unless the widget already exposes visible text that reads correctly) |
| Informational images/icons | `semanticLabel` (or `excludeFromSemantics` if decorative) |
| List items | `label` describing the item |
| Grouping | `container: true` + `label` |
