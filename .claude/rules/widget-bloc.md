---
description: Widget composition, BLoC structure, event/state shape, `BaseBloc`, and what stays in the widget vs the BLoC.
paths: ["**/*_bloc.dart","**/*_event.dart","**/*_state.dart","**/*_vm.dart","**/*_vm_mapper.dart","app/lib/features/**/*.dart","**/*_screen.dart","**/*_view.dart"]
---

# Widget and BLoC Rules

## Widget Naming

- Widget returning a sliver → prefix with `Sliver` (e.g., `SliverProductList`)
- Private widgets (`_WidgetName`) for file-scoped widgets
- No redundant `Widget` suffix if type is obvious (`ProductCard`, not `ProductCardWidget`)
- **`Padding` MUST NOT be the root of a widget's `build()`.** Outer margins belong to the parent (`Column(spacing:)` or a `Padding` wrapper at the call site) — a widget's `build` should return its *content*, not its *placement*.

  Exception: internal padding visually inseparable from the widget's own design (e.g., a card's internal content insets).

## Widget Structure

- **Private widget classes over `Widget _buildX()` methods** — builder methods prevent rebuild optimization
- **Split `build` methods >60 lines** into logical private widget classes
- **No `late final` BLoC fields** — use `context.read<Bloc>()`. Split into a StatelessWidget wrapper (providing `AppBlocProvider`) + inner StatefulWidget
- **`context.read<Bloc>()` MUST be called inside the callback, not hoisted to a local variable above it.** A `final bloc = context.read<XBloc>()` declared above a `builder:`/closure may capture a stale `BuildContext` and obscures which callback uses it — call `context.read<XBloc>()` at each use site instead, e.g. `onTap: () => context.read<CatalogBloc>().add(const .tap())`.
- **No duplicate widgets** — parameterize into one shared widget. Cross-file duplicates → the feature's `widgets/` folder, or `lib/ui_kit/widgets/` when more than one feature needs it.
  - **Cross-file row-widget duplication is the most common offense.** Before adding a `_FooRow` / `_FooCard` / `_FooTile`, search `lib/ui_kit/widgets/` and sibling screens for an existing widget rendering the same shape; reuse via a public widget taking a VM + callbacks. A private row widget may exist only when it's the single user, or is deeply screen-specific and demonstrably wouldn't compose elsewhere.
- **Reusable subwidgets MUST NOT read BLoCs** — use callbacks and data parameters
- **No private widget class that just forwards params to one existing widget with no added composition** — a `_FooImage`/`_FooLabel` whose entire `build()` is `return ExistingWidget(param1: x, param2: y, ...)` (a single `Text`/`Icon`/`Image`/etc., no `Padding`, no layout, no conditional branching) adds an indirection with no behavior. Inline the constructor call at the call site instead. Extract only when it owns state, a listener, composes multiple widgets, or branches on a condition.

## Spacing and Layout

- **Uniform gaps** in Row/Column → use `spacing` property, not `SizedBox`
- **Different gaps** between siblings → use `SizedBox`
- **No `Padding` wrapper** for unconditional sibling spacing; no `Container(margin:)`
- **Conditional widget with spacing** → `Padding(padding: .only(...), child: Widget)`, not `...[SizedBox, Widget]`
- **Items with separators** → use `ListView.separated` (with `shrinkWrap: true` and `NeverScrollableScrollPhysics()` when nested), not manual `if (i > 0)` divider checks
- **No `IntrinsicHeight`** — it forces an extra layout pass. Restructure layout instead (e.g., `CustomPaint` with `child`, `Column` with fixed-height sections)
- **No `Spacer` with no sibling to push against** — `Column`/`Row` already default to `mainAxisSize.max` and anchor children at `start`. A lone `Spacer` adds nothing
- **No hardcoded heights/widths to make two states match** — never sum line-heights + paddings into a magic shared constant; styles and tokens drift. Anchor on structure:
  - **Two branches in the same slot** → `IndexedStack` (lays out all children, paints one; the largest anchors the box). Wrap the smaller branch in `Center` / `Align`.
  - **Reserve another branch's height** → `Visibility(maintainSize: true, maintainAnimation: true, maintainState: true, visible: false)`.
- **Hardcoded dimensions = actual design tokens only** (e.g., painter `chartHeight = 66` from the design). Derived dimensions (`textLineHeight + spacing + ...`) belong in layout, not constants.
- **GestureDetector/InkWell wrapping Padding — treat Padding as effective top-level widget.** When a `GestureDetector`/`InkWell` is the outermost widget and its direct child is a `Padding`, the same anti-pattern applies: top-only padding used purely for inter-item spacing belongs in the parent's `Column(spacing:)`, not baked into every row's `Padding.only(top: N)`.
- **`BlocBuilder`/`BlocProvider` builder returning Padding — same rule.** A `build()` whose first real widget is `BlocBuilder(builder: (_, _) => Padding(...))` (or `BlocProvider`/`BlocConsumer`) hides the violation from a shallow scan but the `Padding` still governs placement — move the outer margin to the parent. The internal-content-insets exception still applies.

## State Access in Widgets

- **No `buildWhen` or `listenWhen`** — if needed, the BLoC is too broad; split it
- **No reading BLoC state imperatively** (`context.read<Bloc>().state`) — state flows via `BlocBuilder`/`BlocListener`, passed as parameters
- **Don't model "open a sheet / navigate" as a `StateData` flag observed by a `BlocConsumer` listener.** The BLoC already owns `appNavigator` — call `appNavigator.showSheet(...)` directly inside the handler and feed the awaited result back into state, e.g. `_handleFilterPressedEvent` awaits the sheet then `emit(.loaded(data: state.data.copyWith(filter: filter)))`. Encoding the intent as an `isFilterSheetOpen` bool watched by a widget `listener` re-implements navigation in the UI and forces a `listenWhen` rising-edge guard against double-firing. The handler is the single place that opens the sheet and stores the result.

## Side Effects in Widgets

Widgets MUST NOT call `toastService` or `appNavigator` directly. Dispatch one event (`onPressed: () => context.read<Bloc>().add(const .addToCartTap())`); the BLoC handler owns toasts + navigation (navigation ban: see `routing.md`).

Exception: `setState` for ephemeral local UI (e.g., toggling a clear button). Anything reaching BLoC, navigator, or toast goes through an event.

## What `BaseBloc` Gives You

Every BLoC extends `BaseBloc<Event, State>` (`lib/core/bloc/base_bloc.dart`). Its `BaseBlocCallbacks` mixin provides the inherited surface — never re-inject any of these through a constructor:

| Member | What it is | Details |
|---|---|---|
| `appNavigator` | `AppNavigator` — all navigation | `routing.md` |
| `toastService` | Success / error / info toasts | — |
| `addDisposable(s)` | Auto-cancelled stream subscriptions | [Stream Subscriptions](#stream-subscriptions) |
| `logError(e, [st])` | Writes to the app `logger` (suppressed in test env) | `error-handling.md` |
| `handleGeneralException` | Override point for handler exceptions | `error-handling.md` |

`base_bloc.dart` also re-exports `flutter_bloc`, `freezed_annotation`, `injectable`, `bloc_concurrency`, `collection`, and `objects` — a BLoC file needs few imports of its own.

Built-in behavior:

- **Every `on<E>` handler runs inside a try/catch** — exceptions route to `handleGeneralException`. This is why manual exception catching is banned.
- **`close()` neutralizes the BLoC** — `appNavigator`/`toastService` are swapped to no-op implementations, every `addDisposable` subscription is cancelled, and `add()` drops events afterward — see [No Manual isClosed Guards](#no-manual-isclosed-guards).
- The service members are wired once at startup through `BaseBlocCallbacks`; tests wire mocks via `setUpTestInfrastructure()` (`testing.md`).

## BLoC Structure

- **MUST extend `BaseBloc<Event, State>`** — never `Bloc` directly
- **3 files minimum:** `*_bloc.dart`, `*_event.dart`, `*_state.dart` — plus `*_bloc_parameter.dart` if the BLoC takes 2+ `@factoryParam` parameters
- **BlocParameter** — only create a `*_bloc_parameter.dart` freezed class when the BLoC needs **2+ factory params**; for a single param pass it directly as `@factoryParam` (e.g., `@factoryParam String strollerId`)
- **Enums co-locate with their caller** — an enum that is a payload of an event belongs in the event file; an enum read from a `StateData` field belongs in the state file. Never split enum definition and sole consumer across `*_state.dart` and `*_event.dart`.
- **Freezed** for events (`sealed class`), states (`sealed class`), and `StateData` (flat data payload shared across state variants)
- **MUST extract `StateData`** when 2+ state variants share fields — never duplicate the field across each variant. **Name that class `{Feature}VM`** (`CreateReportVM`, not `CreateReportStateData`) — it is the view model every widget under the screen reads, so it follows the [VM Patterns](#vm-patterns) naming; the field on each variant stays `data:`.
- **Every variant carries `data: StateData`** so a handler reads `state.data` regardless of the current variant — never guard with `if (state is! LoadedState) return;` then cast. The data is always in scope; only the *variant* changes.
- **No redundant flags in `StateData`** — don't add `isLoading`/`hasError` when a `LoadingState`/`ErrorState` variant already encodes it, and don't add a field the widget can derive from existing fields. The sealed variant IS the flag.
- **Error state MUST implement `BlocErrorStateInterface`** (`lib/core/bloc/bloc_error_state_interface.dart`)
- **Single `on<BlocEvent>` with switch** to route events; events with custom transformers registered separately BEFORE, returning `null` in switch
- **Handler naming:** `_handle{EventName}Event(emit, event)` — always include the `Event` postfix; always pass event to all handlers. **Match each variant with an object pattern, not a type-wildcard** — `_InitEvent() => _handleInitEvent(emit, event)`, never `_InitEvent _ =>`. When the handler needs the narrowed event, bind it (`final _UpdateEvent event => _handleUpdateEvent(emit, event)`) or bind only the fields used (`_BarcodeScanned(:final code) => ...`).
- **Initial state name = `initial`** — never `idle`, `empty`, or `loading` for the pre-init state; reserve `empty`/`loading` for runtime-empty/loading variants.
- **Helper methods come AFTER event handlers**: constructor → `handleGeneralException` override → `_handle*Event` methods → private helpers/getters — don't interleave.
- **Field naming:** booleans tracking a past completed action use `_was*` (`_wasSaveAttempted`), not `_has*`/`_is*`. `is*` is for current state, `has*` for relations/ownership, `was*` for completed events.
- **No manual exception catching** — `BaseBloc` handles it (see [What `BaseBloc` Gives You](#what-basebloc-gives-you)); override `handleGeneralException` only if needed
- **Prefer `required` over `@Default` in `StateData`/VM** — if the constructor always seeds the field (including nullable ones), mark it `required` so call sites are explicit; keep `@Default` only when the field is genuinely optional at construction time
- DI: `@injectable` for screen-scoped, `@lazySingleton` for shared BLoCs

## Sealed Variant Over Readiness Flag

**MUST model "placeholder vs real value" as a sealed-union variant** (e.g. `.dummy()` / `.value(...)`), not as an `isReady` bool beside the data or a nullable field with null-checks. A flag and its data can disagree; a variant makes the illegal combination unrepresentable, and exhaustive matching forces every consumer to handle both shapes — e.g. `sealed class ChartVM { const factory ChartVM.dummy() = ChartDummyVM; const factory ChartVM.value({required List<Point> points}) = ChartValueVM; }` matched with `switch (vm) { ChartDummyVM() => ChartPlaceholder(), ChartValueVM(:final points) => ChartCanvas(points: points) }`. (This is the [No redundant flags in `StateData`](#bloc-structure) rule applied to view models.)

Does NOT apply when the bool *is* the domain value (`isEnabled` from a flag or setting) rather than a readiness gate over sibling fields.

## No Manual isClosed Guards

**MUST NOT write `if (isClosed) return;` guards after `await`s — anywhere in a BLoC, including stream callbacks.** `BaseBloc.close()` swaps `appNavigator` / `toastService` to no-op implementations, cancels every `addDisposable` subscription, and the `add()` override silently drops events on a closed BLoC; a post-close `emit` is ignored by the canceled emitter. Every post-await side effect on a disposed BLoC is inert on its own; a manual guard is dead code — e.g. after `await _repository.save(...)`, go straight to `emit(.saved(...))` / `appNavigator.pop(result)` with no `if (isClosed) return;` in between. There is no location in a BLoC where a manual `isClosed` guard is needed.

## No `.then()` in Handlers

**MUST `await` futures in a handler, not chain `.then()` / `.whenComplete()`.** A `.then` callback runs after the handler has already returned, so a throw inside it escapes `BaseBloc`'s exception handling — `_repo.fetch().then((data) => emit(.loaded(data: data)))` must instead be `final data = await _repo.fetch(); emit(.loaded(data: data));` inside an `async` handler. `Future.value(x)` inside an `async` body is always redundant — just use `x`.

To run independent calls concurrently, await a record (see [Parallel Requests](#parallel-requests)) — not `.then` chains.

## AppBlocProvider

**MUST use `AppBlocProvider`** (`lib/core/bloc/app_bloc_provider.dart`), not `BlocProvider`. It resolves the BLoC from DI and accepts `postCreate` and `param1`. Post a single `.init()` event in `postCreate`.

**The provider lives in the `Screen` widget that owns the BLoC — never in the route table.** Keeping the provider in a `GoRoute.builder` and the `BlocBuilder` in a separate screen splits one feature's wiring across two files. The route builds the `Screen`; the `Screen.build` returns the `AppBlocProvider`, e.g. `Widget build(_) => AppBlocProvider<ProductBloc>(postCreate: (bloc) => bloc.add(const .init()), child: const _ProductView());`. With a single factory param, pass `param1: productId` alongside `postCreate`; with 2+ params pass the `*BlocParameter` object as `param1`.

## Event Transformers

Transformers live in `lib/core/bloc/bloc_transformers.dart`. Events with custom transformers → separate `on<_SpecificEvent>` BEFORE main switch, `null` in switch.

- Search/text input → `debounceRestartable()`
- Scroll/pagination → `throttleDroppable()`
- Tap (default) → `sequential()` (no separate registration)
- Independent → `concurrent()`

**No `Timer` in widgets** for debouncing — dispatch immediately, BLoC transformer handles it.

## Sheet Result Handling

When a sheet pops a multi-field object, the BLoC handler MUST store **every field** that affects rendering in `StateData` and trigger a rebuild — not just the field that happens to be checked for changes. Forgetting a field silently strands the user's selection: the sheet closes showing "applied", the screen renders the old value. E.g. `_handleFilterAppliedEvent` must `emit(.loaded(data: state.data.copyWith(priceRange: event.filter.priceRange, brand: event.filter.brand, sort: event.filter.sort)))` — copying every field of `event.filter`, not just `priceRange`.

Always dispatch a single "applyXxxSelection" event that carries the full result object. Never split into separate events that each consume one field.

## BLoC Communication

Use a feature `Mediator<T>`, injected through the constructor, for decoupled cross-BLoC communication (see `mediator.md`).

## BLoC Constructor Order

**`addDisposable` / `addDisposables` calls MUST come before `on<Event>` registrations** in the BLoC constructor body: `addDisposables([...]); on<ExampleEvent>(_handleEvent);`, never the reverse. Subscriptions set up after handler registration can fire before the handler is wired, creating a race window.

## Stream Listener Naming and Tear-Offs

**Stream and mediator listeners MUST be named `_handle<Thing>` and accept the message as their sole parameter**, so they can be passed as tear-offs: `addDisposable(_repo.onUpdate.listen(_handleUpdate));` with `void _handleUpdate(UpdateMessage message) { ... }` — not an anonymous lambda wrapping a private method.

Does NOT apply when the listener must close over local state before subscribing (rare).

## Stream Subscriptions

**MUST use `addDisposable()` or `addDisposables()`** for stream subscriptions in BLoCs.

- **Single subscription:** `addDisposable(stream.listen(handler))`
- **Multiple subscriptions (preferred):** batch them with one `addDisposables([sub1, sub2, sub3])` call rather than three separate `addDisposable` calls — less noise

Never store a `StreamSubscription` as a field and cancel it manually — `BaseBloc` handles cleanup via `addDisposable`.

## Navigation

Navigation via `appNavigator` in BLoC handlers (see `routing.md`).

## VM Patterns

- **Class suffix**: `VM` (`ExampleVM`, `BalanceVM`); **file suffix**: `_vm.dart`
- **Location**: the feature's `models/` folder — NOT inside state files
- **Error fields**: typed (enum or sealed variant), never a localized `String` — a BLoC has no `BuildContext`, so the widget turns the typed error into `S.of(context).xxx`. See `form-validation.md`.
- **Validation getters**: Can add to VM with `const` modifier for computed logic that depends only on the VM's own fields
- **Every derived value on a VM is computed by the mapper, never by a getter on the VM itself** — a `get config => ...` / `get isSubmitEnabled => ...` on the model recomputes on each read and hides the derivation from tests. Declare the derived values as plain `required` fields and have `{Bloc}VMMapper.to{Feature}VM(data)` fill them in; the BLoC routes every `copyWith` through one `_emitForm(emit, data)` helper so nothing can emit an unmapped VM. Config lookups belong in the mapper too, not in the model or the widget.
- **Display-derived math belongs in the mapper, not the widget** — precompute chart heights, sorted/filtered lists, and totals in `{Bloc}VMMapper` and expose them as fields on the VM. The widget reads, never recomputes on each build
- **MUST NOT include widget/UI-kit names in VM, mapper, file, or field names** — name after the data/concept, not the render target. `Widget`, `Sheet`, `Badge`, `Tab`, `Body`, `Card`, `Panel`, `Tile`, `Row`, `Column`, `Header`, `Footer` belong to widgets, not VMs: `PriceVM` not `PriceWidgetVM`; `StockVM` not `StockSheetVM`; field `priceVM` not `priceWidgetVM`. Widgets get renamed/replaced; the data shouldn't follow.

## Mapper Conventions

Mappers live in the feature's `mappers/` folder.

- **One BLoC = one mapper**, named `{BlocName}VMMapper`, file `{bloc_name}_vm_mapper.dart`
- **MUST be `@injectable` instance class with a `const` public constructor and instance methods** — never a static utility class with a private `._()` constructor. Inject via the BLoC constructor (`final ExampleVMMapper _mapper;`) and call as `_mapper.toExampleVM(...)`. Static mappers can't be substituted in tests, can't depend on other injectables, and skip the project's DI graph.
- **Main method**: `to{Entity}VM()` — e.g., `toExampleVM(ExampleDomain domain)`
- **Private helpers**: `_{methodName}()` — e.g., `_toItemsVM(List<Item> items)`
- **Extensions**: For enum/simple transforms — e.g., `extension on ItemStatus { StatusVM toStatusVM() => ... }`
- Create multiple mappers **only** when a mapping method is reused across different BLoCs
- **Pass the state-data object, not unpacked fields** — when the BLoC already holds a typed state-data object, the mapper method takes that object and reads the fields it needs (`_mapper.toExampleVM(data)`). Declaring one named parameter per field forces every call site to unpack the state; the object collapses the call to a single delegate.

`@injectable class ExampleVMMapper { const ExampleVMMapper(); ExampleVM toExampleVM(ExampleDomain domain) => ExampleVM(...); }`. In tests, instantiate directly with no mock needed for pure mappers: `ExampleBloc(mockRepo, const ExampleVMMapper())`.

## Screen Structure

Public `Screen` provides the BLoC (the `AppBlocProvider` pattern shown above), private `_View` contains UI logic — `ExampleScreen extends StatelessWidget` returning `AppBlocProvider<ExampleBloc>(child: const _ExampleView())`, with `_ExampleView extends StatelessWidget` holding the actual layout.

## State Handling

- **MUST use `switch` expressions** for sealed state types — never `if/else` chains: `builder: (context, state) => switch (state) { ExampleLoadingState() => const CircularProgressIndicator(), ExampleErrorState() => ErrorView(onRetry: ...), ExampleLoadedState() => _LoadedContent(vm: state.data) }`
- Exhaustiveness checking ensures all states are handled at compile time

## Parallel Requests

Start the calls, `await Future.wait([...])` on them, then read each typed result. `Future.wait` rethrows the original exception, so `handleGeneralException` receives the repository's `AppException` as is. Do NOT use record `.wait`: it wraps failures in `ParallelWaitError`, which `BaseBloc` does not unwrap.

```dart
final balanceFuture = _financeRepository.fetchBalance();
final tasksFuture = _taskRepository.fetchTasks();
await Future.wait([balanceFuture, tasksFuture]);
final balance = await balanceFuture;
final tasks = await tasksFuture;
```

## Services Integration

- **Navigation**: `appNavigator.push(AppRoutes.x(...))`, `appNavigator.showSheet(...)`, `appNavigator.pop()`
- **Toasts**: `toastService.showSuccess(...)`, `.showError(...)`, `.showInfo(...)`
- **Error logging**: `logError(ex, st)` — writes to the app `logger`

A BLoC has no `BuildContext`: user-visible text reaches toasts and widgets as typed values (enum, sealed variant, exception) resolved to `S.of(context)` strings in the widget layer or inside `ToastService`. See `localized-strings.md`.

## BLoC DI Registration

BLoCs are auto-discovered by `injectable_generator`. Annotate the class itself:

- **No runtime params** → annotate the class with `@injectable` / `@lazySingleton`; `injectable` registers the constructor and resolves every parameter from the DI container.
- **With `@factoryParam`** → keep `@injectable` on the class; mark constructor parameters that come from the call site with `@factoryParam`. The generator emits a factory accepting those params at resolve time.
- After adding/changing annotations, run `fvm dart run build_runner build` (from `app/`) so `lib/di/injection.config.dart` regenerates.
- Only add an explicit `@module` entry in `lib/di/` if the object is third-party and cannot be constructed by annotation — see `di.md`.

## Screen Naming

| Type | Pattern | Example |
|------|---------|---------|
| Regular screen | `FeatureScreen` | `CatalogScreen` |
| Dialog/modal | `FeatureSheet` | `FilterSheet` |
| Tab content | `FeatureTab` | `OrdersTab` |
| Private view | `_FeatureView` | `_CatalogView` |
| Private widget | `_ComponentName` | `_Header`, `_TabPanel` |
| Reusable card | `FeatureCard` | `StrollerCard` |
