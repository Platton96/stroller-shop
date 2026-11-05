---
description: App UI kit — theme tokens from `context.colors` / `context.textStyles`, shared widgets in lib/ui_kit/widgets, image and icon rules, sheet / Scaffold / Positioned layout traps.
paths: ["**/*_screen.dart","**/*_view.dart","**/*_page.dart","app/lib/features/**/*.dart","app/lib/ui_kit/**/*.dart"]
---

# UI Kit

All reusable UI lives in `app/lib/ui_kit/`:

| Path | Holds |
|---|---|
| `lib/ui_kit/theme/app_colors.dart` | `AppColors` — a `ThemeExtension` with the color tokens |
| `lib/ui_kit/theme/app_text_styles.dart` | `AppTextStyles` — the text-style tokens |
| `lib/ui_kit/theme/app_radius.dart` | `AppRadius` — corner radius tokens |
| `lib/ui_kit/theme/app_theme.dart` | `ThemeData` assembly and the `context.colors` / `context.textStyles` accessors |
| `lib/ui_kit/widgets/` | Shared widgets used by more than one feature |

Always check `lib/ui_kit/widgets/` before creating a new widget — the component may already exist. A widget needed by a single feature stays in that feature's `widgets/` folder; promote it to `ui_kit/widgets/` when a second feature needs it.

## Theming Rules

### Colors
**MUST NOT use hard-coded `Color(0xFF...)` or `Colors.*`** in features (exception: `Colors.transparent`). Use `context.colors.*` for all color access. If a needed color has no token, add a token to `AppColors` rather than inlining a value.

### Text Styles
**MUST NOT use `Theme.of(context)` or `TextStyle(...)` directly in features.** Use `context.textStyles.*`. If a needed style has no token, add one to `AppTextStyles`.

### Border Radii
**MUST use `AppRadius` tokens**, not `BorderRadius.circular(12)` with a magic number.

### Extract Theme Variables
When `context.colors` or `context.textStyles` is used **3+ times** in a single `build` method, extract to a local variable at the top of the method: `final colors = context.colors;` / `final textStyles = context.textStyles;`.

### Prefer Semantic Tokens Over `copyWith`
**MUST check for an available token** before reaching for `style.copyWith(color: ...)`. `copyWith` is a last resort for values that are conditional or genuinely one-off (e.g., an animated tint).

### Deprecated Replacements

| Deprecated | Replacement |
|-----------|-------------|
| `MaterialStateProperty` | `WidgetStateProperty` |
| `MaterialState` | `WidgetState` |
| `accentColor` | `colorScheme.secondary` |
| `ThemeData.errorColor` | `colorScheme.error` |
| `ThemeData.backgroundColor` | `colorScheme.surface` |

## Images and Icons

- Network images go through one shared widget in `lib/ui_kit/widgets/` that owns the loading placeholder, error fallback, and corner radius — never a raw `Image.network` scattered through features. If none exists yet, create it there first.
- Icons come from `Icons` / the project's icon set; colors from `context.colors`, never a literal.

## Sheets

Sheets open through `appNavigator.showSheet(...)` from a BLoC (`routing.md`), never `showModalBottomSheet` in a widget. Keep the safe-area bottom inset: don't zero out `MediaQuery.viewPaddingOf(context).bottom` handling, or the primary button clips behind the home indicator on iPhones.

## Scaffold Layout: White Top + Grey Body

When a screen requires one color for the app-bar area and another for the content body, do NOT set `Scaffold.backgroundColor` to the body color. Status-bar inset is painted in `Scaffold.backgroundColor`, so the body color bleeds behind the status bar. Instead keep the app-bar color as `Scaffold(backgroundColor: ...)` and wrap the body in `ColoredBox(color: ..., child: BodyContent())` so only the body area changes color.

## Positioned Centering

`AnimatedPositioned` / `Positioned` without explicit `left` and `right` has intrinsic width anchored at `left: 0`. Wrapping with `Center` does nothing because `Center` has no width to work with — `AnimatedPositioned(bottom: 16, left: 0, right: 0, child: Center(child: _FloatingToolbar()))` spans full width so `Center` can center within it; omitting `left`/`right` anchors the toolbar left regardless of the `Center`.

## GestureDetector on Transparent Areas

**MUST set `behavior: HitTestBehavior.opaque`** on a `GestureDetector` that wraps an empty or transparent area and must register taps. Without it, hit-testing falls through the transparent paint to the widget beneath, and taps are silently dropped: `GestureDetector(behavior: HitTestBehavior.opaque, onTap: onTap, child: SizedBox(width: 48, height: 48))` captures the full bounding box; omitting `behavior` on a `Container(color: Colors.transparent)` misses taps.

Does NOT apply when `translucent` behavior is intentionally needed (taps should both register and pass through).

## Text Overflow

**MUST add overflow protection** (`maxLines` + `overflow: .ellipsis`) on `Text` widgets displaying dynamic numbers or variable-length strings inside constrained containers (`Expanded`, fixed-width cards, etc.).

## Don't Wrap UI Kit Widgets

No single-use private widget classes that just forward props to a UI kit widget — use inline instead. Extract into a private widget class **only** when it contains actual logic (state, listeners, computed values) or is reused in multiple places.
