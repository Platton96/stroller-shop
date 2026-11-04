---
description: ARB key conventions, gen-l10n workflow, and why composing strings via concatenation breaks translation.
paths: ["**/*.arb","app/lib/l10n/**/*.dart","**/l10n.yaml"]
---

# Localized Strings Rules

Localization uses Flutter `gen-l10n`. Russian is the only locale: the ARB file is `app/lib/l10n/app_ru.arb`, the generated class is `S` (`lib/l10n/generated/s.dart`), and strings are read as `S.of(context).key`. After editing the ARB, run `fvm flutter gen-l10n` from `app/`. Never edit generated files.

## No Hardcoded User-Visible Text

Every user-visible string goes through an ARB key — no string literals in `Text(...)`, toasts, or error messages shown to the user.

## Strings Are Resolved in the Widget Layer

`S.of(context)` needs a `BuildContext`; a BLoC has none and MUST NOT hold one. State and VMs carry typed values (enum, sealed variant, number, exception) and widgets turn them into localized text. Never pass `BuildContext` into a BLoC, event, or mapper to get a string.

**Exception — toasts:** a toast is a one-shot side effect owned by the BLoC handler, so the handler builds its text with `appStrings` (`lib/l10n/app_strings.dart`, a context-free `lookupS(const Locale('ru'))`): `toastService.showSuccess(appStrings.cartAdded(name))`. Use `appStrings` only for toast text and for text the BLoC sends to the backend on the user's behalf (e.g. a prefilled question to the assistant) — never for display text stored in state or VMs.

## One ARB Key, Not Concatenation

Each user-visible sentence MUST be a **single ARB entry with `{placeholder}`s** for variable parts. Never build a sentence from multiple `S.of(context).*` fragments concatenated in Dart.

```dart
// bad — different languages may need different word order, particles, or inflections
Text('${S.of(context).deleteOrderTitle} ${order.number}?')

// good — one key, placeholder fills the variable
Text(S.of(context).deleteOrderTitle(number: order.number))
```

In ARB:
```json
"deleteOrderTitle": "Удалить заказ №{number}?",
"@deleteOrderTitle": { "placeholders": { "number": {} } }
```

Why: Russian declines and reorders words — a concatenation like `"Delete " + title + "?"` can't translate grammatically. Keep the whole sentence in one ARB string.

## Plurals and Selects

Use ICU `plural` / `select` messages in the ARB for counts and variants (`{count, plural, one{...} few{...} many{...} other{...}}`) instead of `if (count == 1)` branches in Dart.

## Money

Money is formatted by the `priceByn` / `priceApproxByn` messages (intl decimal pattern) — `S.of(context).priceByn(price)`. Never interpolate the unit by hand. See `dart-coding.md`.

## Placeholder Metadata Order Drives Generated Param Order

Call sites pass arguments by the generated method signature. After adding or reordering `@<key>.placeholders`, run `fvm flutter gen-l10n` and check the generated `S.<key>(...)` signature in `lib/l10n/generated/` still matches the call sites.

## Adding a Locale

Russian is the only locale today. If another locale is ever added, every new key MUST land in all ARB files in the same change, with the `@key` placeholder metadata in each.
