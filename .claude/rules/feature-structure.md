---
description: Folder structure and naming for a feature under lib/features/<name>/ — flat (single-screen) and nested (multi-screen) layouts, file naming, trivial-class colocation.
paths: ["app/lib/features/**/*.dart"]
---

# Feature Structure Rules

A feature is a folder, not a package: `app/lib/features/<name>/`. There is no per-feature `pubspec.yaml`, barrel file, or `injection.dart` — annotated classes are discovered by the single `@InjectableInit()` in `lib/di/injection.dart` (`di.md`), and other code imports files directly.

## Top-Level Files

- **`<name>_pages.dart`** — every `Page` definition for the feature (`routing.md`). Pages are never defined inline in screens.
- **Screens, BLoCs, VMs, widgets** — in the layout below.

Data access does not live in the feature: services are in `lib/services/`, repositories in `lib/repositories/`, domain models in `lib/entities/` (`data-layer.md`). A type used by more than one feature belongs in `lib/entities/`; shared widgets belong in `lib/ui_kit/widgets/`. Cross-feature communication goes through repositories or a feature `Mediator` in `mediators/` (`mediator.md`).

Generated files (`*.freezed.dart`, `*.g.dart`, `*.config.dart`) are never edited by hand. Regenerate via `fvm dart run build_runner build` (from `app/`).

## Layouts

**Pick based on number of screens, not on size of feature.**

### Layout A — Flat (single screen)

```
lib/features/<name>/
  <name>_screen.dart
  bloc/        <name>_bloc.dart, <name>_event.dart, <name>_state.dart
  ui_models/   <name>_vm.dart (+ supplementary VMs)
  models/      (optional) BLoC-held domain aggregates mapped to the VM
  mappers/     <name>_vm_mapper.dart
  widgets/
  mediators/   (optional) <subject>_mediator.dart
  extensions/  (optional)
```

### Layout B — Nested (two or more screens)

Each screen has its own subtree; feature-level `mediators/` and `extensions/` stay at the top.

```
lib/features/<name>/
  mediators/
  extensions/
  <screen_a>/
    <screen_a>_screen.dart
    bloc/  ui_models/  models/  mappers/  widgets/
  <screen_b>/
    <screen_b>_screen.dart
    bloc/  ui_models/  models/  mappers/  widgets/
```

| Screens | Layout | Notes |
|---|---|---|
| 1 | Flat | Don't nest a single screen — it's noise. |
| 2+ | Nested | Migrate from flat to nested as soon as the second screen lands. |

## Naming Conventions

| Concept | Convention | Anti-pattern |
|---|---|---|
| BLoC directory | `bloc/` (singular) | `blocs/` |
| Screen widget | `<screen_name>_screen.dart` | `<screen_name>_page.dart` |
| Sheet widget | `<sheet_name>_sheet.dart` | `<sheet_name>_screen.dart` |
| Route | `GoRoute` in `lib/app/app_router.dart`, path in `AppRoutes` (`routing.md`) | Routes or path strings inside features |
| VM | `<screen_or_feature>_vm.dart` for the root VM; supplementary VMs in `ui_models/` | One mega-VM per feature |
| VM mapper | `<screen_or_feature>_vm_mapper.dart` in `mappers/`; one file per VM | A single `mappers.dart` aggregating all |
| Mediator | `<subject>_mediator.dart` in `mediators/` | Mediators inside `bloc/` or `core/` |
| Extension | `<type>_extension.dart` in `extensions/`, named `<Type>Extension` | `extension on X` at the bottom of a widget or screen file |

## Colocate Trivial Classes — No Separate File for ≈3 Lines

**MUST NOT create a separate file for a trivial class** (≈3 lines, no methods, no logic). Small related types — message payloads, simple value holders, event data — belong in the same file as their consumer, or in a shared file with other related small types.

```dart
// bad — two one-field classes each get their own file
// file: item_selected_message.dart
class ItemSelectedMessage { final String id; const ItemSelectedMessage(this.id); }

// file: item_removed_message.dart
class ItemRemovedMessage { final String id; const ItemRemovedMessage(this.id); }

// good — both colocated in the feature's messages file
// file: item_messages.dart
class ItemSelectedMessage { final String id; const ItemSelectedMessage(this.id); }
class ItemRemovedMessage  { final String id; const ItemRemovedMessage(this.id); }
```

Exception: a class that is referenced from many files benefits from its own file for stable imports.

## File Name Must Match Public Class Name

**The file name of a public class MUST match the class name in `snake_case`.** A file `order_filter.dart` that contains `class ProductFilter` confuses both humans and tooling.

```dart
// bad — class name and file name disagree
// file: order_filter.dart
class ProductFilter { ... }

// good — file name mirrors the class
// file: product_filter.dart
class ProductFilter { ... }
```

Does NOT apply to files that deliberately hold multiple public classes (colocated trivial classes per the rule above).

## Tests

Tests mirror the feature folder: `app/test/features/<name>/bloc/`, `app/test/features/<name>/mappers/`. See `testing.md`.

## Checklist

- [ ] Layout matches the screen count (flat for 1, nested for 2+)
- [ ] The screen is registered as a `GoRoute` and its path lives in `AppRoutes`
- [ ] BLoC trio (`*_bloc.dart`, `*_event.dart`, `*_state.dart`) in `bloc/`; VMs in `ui_models/`, BLoC aggregates in `models/`; mapper in `mappers/`
- [ ] No data-layer code (services, repositories, DTOs, domain models) inside the feature folder
- [ ] File names mirror public class names; trivial classes are colocated
