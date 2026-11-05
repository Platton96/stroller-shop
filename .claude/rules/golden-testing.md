---
description: Screen golden tests — `goldenTest()` + `GoldenScenario`, font loading, mocked BLoCs, required coverage and how to update or debug a golden.
paths: ["app/test/golden/**/*.dart","app/test/helpers/golden/**/*.dart","app/test/flutter_test_config.dart"]
---

# Golden Testing Rules

Plain Flutter `matchesGoldenFile` behind a small project harness — no Alchemist or `golden_toolkit`. The setup follows the `uzumGoldenTest()` + `Scenario` pattern, collapsed into this single package.

| Piece | Where |
|---|---|
| `goldenTest()`, `GoldenScenario`, `registerBloc()`, `GoldenApp` | `app/test/helpers/golden/golden_setup.dart` |
| Font loading (Manrope + Material icons), `allowRuntimeFetching = false` | `app/test/helpers/golden/golden_test_executable.dart` |
| Runs the font loading before every test file | `app/test/flutter_test_config.dart` |
| Shared mock BLoCs and VM fixtures | `app/test/golden/golden_test_data.dart` |
| `golden` tag timeout | `app/dart_test.yaml` |

## Required Coverage

- **Every screen MUST ship with goldens** covering each visually distinct BLoC state: loading, loaded, empty, error, plus any branch that changes layout (out of stock, sending, a selected tab).
- Sheets are screens too: render them opened through `showAppBottomSheet` (see `sort_sheet_test.dart`).
- **Do NOT add standalone goldens for feature widgets** (`widgets/` building blocks) — the screen golden already renders them.

## Writing a Golden

One file per screen in `app/test/golden/<feature>/<screen>_test.dart`. Each scenario mocks the screen's BLoC with a fixed state; the screen's `AppBlocProvider` resolves the mock from `ServiceLocator.getIt`, which the harness resets before every scenario.

```dart
void main() {
  GoldenScenario scenario(String name, CartState state) => GoldenScenario(
    name,
    widget: const Scaffold(body: CartScreen()),
    registration: [(getIt) => registerBloc<CartBloc, CartState>(getIt, MockCartBloc(), state)],
  );

  goldenTest(
    'cart_screen',
    scenarios: () => [
      scenario('loaded', const .loaded(data: goldenCartVM)),
      scenario('empty', const .loaded(data: goldenEmptyCartVM)),
      scenario('error', const .error(data: goldenEmptyCartVM, exception: goldenException)),
    ],
  );
}
```

- File and scenario names are `snake_case` (asserted). Images land at `goldens/<fileName>/<theme>/<scenario>.png` next to the test file.
- **Always pass both type arguments to `registerBloc`** — inferred from the mock it registers `MockCartBloc`, and `AppBlocProvider<CartBloc>` will not find it.
- **Give the screen its production background.** Tab screens live inside `TabsScreen`'s `Scaffold` in production, so wrap them in `Scaffold(body: ...)`; screens that own a `Scaffold` render as is.
- Image URLs in fixtures are `''` so `StrollerImage` shows its placeholder — never hit the network.
- Default canvas is `goldenScreenSize` (390×844). Pass `size:` for a scrollable page whose content matters below the fold (`shop_screen` uses 390×1600).
- Mock BLoCs in `golden_test_data.dart` are public: several golden files share them. This is the one exception to the private-mock rule in `testing.md`.

## Fonts

`google_fonts` never fetches at runtime: the Manrope weights the app uses live in `app/assets/google_fonts/` (400, 500, 600, 700, 800), and `GoogleFonts.config.allowRuntimeFetching = false` is set in both `main.dart` and the test executable. Using a new weight means adding its `Manrope-<Weight>.ttf` there and to `_manropeFiles` in the test executable — otherwise text renders in the fallback font and `google_fonts` throws.

## Updating and Debugging

```bash
fvm flutter test --update-goldens test/golden            # regenerate after an intended visual change
fvm flutter test test/golden/cart/cart_screen_test.dart  # verify one screen
```

- A failing comparison writes `failures/<name>_masterImage.png`, `_testImage.png`, `_isolatedDiff.png`, `_maskedDiff.png` next to the golden. Open `_maskedDiff.png` to see what moved before deciding between a fix and `--update-goldens`. `failures/` is gitignored.
- A golden that fails with `RenderFlex overflowed` is a layout bug in the screen, not in the test. Fix the widget; never enlarge the canvas to hide it.
- Look at every regenerated PNG before committing it.
