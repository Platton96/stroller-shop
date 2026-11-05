---
description: BLoC tests, repository tests, service tests — what to mock, what to assert, and when to delegate to the `unit-test-writer` agent.
paths: ["**/test/**/*.dart"]
---

# Testing Rules

`app/test/` mirrors `app/lib/`: `test/features/<name>/bloc/`, `test/features/<name>/mappers/`, `test/repositories/`, `test/services/`. A test file is named after its source file with a `_test.dart` suffix. Stack: `flutter_test`, `bloc_test` 10, `mocktail`.

## Test Writing Delegation

**Prefer the `unit-test-writer` agent** for writing new test files. For small inline test additions or single-test fixes, writing directly is acceptable.

## BLoC Testing

**MUST use `createBloc()` factory** — never a shared `late BlocType bloc` field.

- `setUp` — initialize mocks only, never the BLoC
- `tearDown` — `reset(mock)` on each mock; do NOT call `bloc.close()` (`blocTest` manages lifecycle)
- `blocTest` — pass `build: createBloc` as method reference
- Plain `test` — `final bloc = createBloc()` inline, call `bloc.close()` at end

```dart
class _MockStrollerRepository extends Mock implements StrollerRepository {}

void main() {
  setUpAll(setUpTestInfrastructure);

  late _MockStrollerRepository mockRepo;

  setUp(() => mockRepo = _MockStrollerRepository());
  tearDown(() => reset(mockRepo));

  CatalogBloc createBloc() => CatalogBloc(mockRepo, const CatalogVMMapper());

  test('initial state is initial', () {
    final bloc = createBloc();
    expect(bloc.state, const CatalogState.initial(data: CatalogVM()));
    bloc.close();
  });

  blocTest<CatalogBloc, CatalogState>(
    'emits empty state on init when there are no strollers',
    build: createBloc,
    setUp: () => when(() => mockRepo.fetchStrollers()).thenAnswer((_) async => []),
    act: (bloc) => bloc.add(const CatalogEvent.init()),
    expect: () => [const CatalogState.empty(data: CatalogVM())],
  );
}
```

## Shared Test Infrastructure

`app/test/helpers/test_infrastructure.dart` provides `setUpTestInfrastructure()`. Call it in `setUpAll`. It sets `BaseBloc.isTestEnvironment = true` (so `logError` stays quiet) and configures `BaseBlocCallbacks` with a mock `AppNavigator`, and a mock `ToastService`. Read the helper for the exact exported names before use, and don't roll your own mocks for these.

- Assert navigation via the mock `AppNavigator` (`verify(() => mockAppNavigator.push(any()))`), toasts via the mock `ToastService`.
- Platform channels (`Clipboard`, etc.) → `TestDefaultBinaryMessengerBinding`.
- Keep `test/helpers/` generic: infrastructure, base mocks, builders reused by many tests. Feature fixtures stay next to the feature's tests.

## blocTest

Do NOT add `wait:` to `blocTest` — it already awaits all emissions (including those from the constructor and from mediator listeners). Only add it if omitting it causes an actual failure.

## Draining Pending Microtasks

**MUST NOT use `await Future<void>.delayed(Duration.zero)`** to drain pending microtasks/futures — it's a brittle race-condition magnet that ties test correctness to scheduler timing. Use **`await pumpEventQueue()`** from `package:flutter_test` instead — it drains all pending event-queue work deterministically. Debounce/throttle transformers are settled the same way (use `fakeAsync` when a test must advance a real timer).

```dart
// bad — race-prone, depends on scheduler internals
manager.didChangeAppLifecycleState(.resumed);
await Future<void>.delayed(Duration.zero);
verify(() => mockRepo.fetchTokens()).called(1);

// good — drains the event queue deterministically
manager.didChangeAppLifecycleState(.resumed);
await pumpEventQueue();
verify(() => mockRepo.fetchTokens()).called(1);
```

## Test Binding Initialization

**MUST NOT** call `TestWidgetsFlutterBinding.ensureInitialized()` in test files unless a test truly needs the binding and `setUpTestInfrastructure()` has not already initialized it. Using `TestWidgetsFlutterBinding.instance` or `TestDefaultBinaryMessengerBinding.instance` (e.g. for Clipboard / platform channel mocks) works directly once the binding exists.

## Mediator Testing

Use a **real mediator** (not mock), passed through the BLoC constructor. Close it in `tearDown`. See `mediator.md`.

## Repository and Service Tests

- Repository tests mock the service (`class _MockStrollerService extends Mock implements StrollerService {}`) and assert the DTO → domain mapping and the `AppException` produced for failing `DioException`s.
- Service/DTO tests cover `fromJson`/`toJson` round-trips, defaults for missing/null fields, enum fallbacks, and discriminator parsing — never Retrofit itself.
- Request-body arguments follow the `any()` / `captureAny()` pattern from `data-layer.md`.

## Widget Tests

Widget tests (`testWidgets` / `WidgetTester` / `pumpWidget`) and golden tests are **not used yet**. Keep logic out of widgets so it is covered by BLoC, mapper, and repository tests; do not introduce widget or golden test infrastructure unless asked.

## Mock Class Visibility

**MUST declare mock classes private** with a `_` prefix — `_MockStrollerRepository`, never `MockStrollerRepository`. Mocks are local to the test library; making them public leaks them across files and makes visibility inconsistent.

## Don't Test Language Tautologies

**Don't write tests that only assert Dart language semantics.** Skip:

- `expect(MyException(), isA<Exception>())` — guaranteed by `implements Exception`.
- `expect(const MyException(2).field, 2)` — guaranteed by the constructor binding the parameter.
- `expect(toString(), contains('MyException'))` — guaranteed by an explicit `toString` override that's already visible in the source.

These tests add coverage line count without exercising any project logic. If an exception class has no behavior (no equality override, no toString building from multiple parts, no factory logic), it does not need a test file.

## Test File Style

- **No decorative section separators** (`// ---`, banner blocks, `/// Test States` headers in `*_test_data.dart`). Use `group(...)` / extracted data files for sections — test/group names are the table of contents.
- **No explanatory comments describing what a test does.** The `test(...)` description is the comment; if it isn't clear enough, fix the description.
- **One blank line between Arrange and Act/Assert** inside each test — Arrange (setup/build) sits above, the blank line separates it from the act/expect block below.
- **Collapse single-expression `setUp`/`setUpAll`/`tearDown` to an arrow or tearoff** — `setUpAll(setUpTestInfrastructure);` beats `setUpAll(() async { await setUpTestInfrastructure(); });` when no extra work is needed.

## Test Data Extraction

When a test file accumulates 3+ inline constants (mocks, fixtures, VMs) that are reused across multiple `test`/`blocTest` blocks, extract them into a `{file_name}_test_data.dart` file and include it via `part`:

```dart
// in the test file
part 'catalog_bloc_test_data.dart';

// in catalog_bloc_test_data.dart
part of 'catalog_bloc_test.dart';

const _testStroller = Stroller(id: 's1', brand: 'Brand');
final _testStrollers = [_testStroller];
```

Name the extracted constants with a leading underscore — they're private to the library the `part` pair forms.

**MUST always use `part`/`part of`** for `*_test_data.dart` — never plain `import` of a relative path.

**One `*_test_data.dart` per test file. Never share across test files.** If two tests need the same fixture, build it locally in each — duplication of a few const lines is cheaper than coupling unrelated tests through a shared file.

**Inline test data goes ABOVE mock class declarations**, immediately after imports. Order is: imports → inline test data (constants/builders) → mock classes → `void main()`.

**Generic fixture builders used by many tests** (a domain object constructed everywhere with one or two fields varying) belong in `test/helpers/` as `buildTestX(...)` functions.

## Running Tests

Run from `app/`:

- Single file: `fvm flutter test test/features/catalog/bloc/catalog_bloc_test.dart`
- Whole suite: `fvm flutter test`
- With coverage: `fvm flutter test --coverage`
- Always run `fvm flutter analyze` as well; test files must have zero issues.

While iterating, run the single file; before marking work done, run the whole suite.

## Scope: Dart/Flutter code only

**The test requirement applies ONLY to changes in Dart/Flutter code** (`*.dart` under `app/lib/`). Changes that are NOT Dart code — config/YAML, ARB resources, Markdown/docs, native iOS/Android glue, the Go backend — **do not require a Dart test and MUST NOT get a bespoke Dart test harness.** Verify such changes by running them and by review. If a bug fix lands in a non-Dart file, state in the report why no Dart test guards it instead of inventing one.
