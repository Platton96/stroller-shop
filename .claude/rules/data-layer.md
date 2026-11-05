---
description: Data classes (primary constructors + json_serializable), Retrofit services, repositories, domain objects. Where DTOs vs domain models live and how they connect.
paths: ["app/lib/services/**","app/lib/repositories/**","app/lib/objects/**","**/*_repository.dart","**/*_service.dart","**/*_obj.dart"]
---

# Data Layer Rules

## Layers and Folders

```
UI (widgets) → BLoC → Repository → Service → API
```

| Layer | Folder | Holds |
|---|---|---|
| Services | `lib/services/<domain>/` | `<domain>_service.dart` (Retrofit `@RestApi`), `obj/` (`*Obj` DTOs, API enums), `response/` (`*ResponseObj`) |
| Repositories | `lib/repositories/` | Concrete `@lazySingleton` classes extending `BaseRepository` |
| Objects (domain) | `lib/objects/` | Freezed domain models, barrel `lib/objects/objects.dart`; `Transformable` in `lib/objects/common/transformable.dart` |
| Exceptions | `lib/core/exceptions/app_exception.dart` | Sealed freezed `AppException` |

Data flows one way. A BLoC never imports a service or a DTO; a widget never imports a repository. Repositories take services, return `lib/objects/` types. Cross-feature contracts go through repositories or a feature `Mediator` (`mediator.md`) — there is no interactor layer.

## Data Classes: Primary Constructor, Not Freezed

**MUST NOT use `@freezed` for serialized data classes.** DTOs, request bodies, response objects, and params are plain classes with a Dart **primary constructor** plus `@JsonSerializable`. Freezed is reserved for BLoC states/events, UI view models, and domain objects (see `widget-bloc.md`).

Every primary-constructor parameter needs `final` to become a field; defaults replace `@Default(...)`, and a default that is a collection literal or a constructor call needs `const`.

```dart
// good — primary constructor, json_serializable owns fromJson/toJson
@JsonSerializable()
class const StrollerObj({
  required final String id,
  @JsonKey(name: 'display_name') final String title = '',
  final List<String> tags = const [],
}) {
  factory StrollerObj.fromJson(Map<String, dynamic> json) => _$StrollerObjFromJson(json);

  Map<String, dynamic> toJson() => _$StrollerObjToJson(this);
}

// bad — freezed in the data layer
@freezed
abstract class StrollerObj with _$StrollerObj {
  const factory StrollerObj({required String id, @Default('') String title}) = _StrollerObj;
  factory StrollerObj.fromJson(Map<String, dynamic> json) => _$StrollerObjFromJson(json);
}
```

- **MUST include** `part 'file_name.g.dart';` — there is no `.freezed.dart` part for DTOs
- **`class const Name(...)`** so call sites can build the DTO in a `const` context; drop `const` only when a field type forbids it
- Methods and getters go in the class body after the `fromJson` factory — no `const Name._();` private constructor is needed
- Run `fvm dart run build_runner build` (from `app/`) after changes

**Exception:** BLoC states, BLoC events, `*_vm.dart` view models, and `lib/objects/` domain models keep `@freezed`.

## DTOs Carry No Equality

**MUST NOT hand-write `==`/`hashCode`** on request-body or response DTOs. A primary-constructor data class has only identity equality, and that is correct — nothing in production compares a DTO. Request bodies are built and serialized to JSON; responses are mapped to domain models on arrival and compared only as those models. `@immutable` is fine (all fields are `final`); an equality contract is not.

Because these DTOs have only identity equality, **tests MUST NOT value-match a body instance** in a mock argument matcher — production builds its own instance, so `when(() => service.post(SomeBodyObj(...)))` / `verify(...)` never matches and the stub returns `null`. Stub with `any()` and assert the sent body's fields via `captureAny()`:

```dart
// good — stub with any(), verify by capturing and asserting fields
registerFallbackValue(const CreateOrderBodyObj(strollerId: '', quantity: 0));  // in setUpAll, once per body type
when(() => service.createOrder(any())).thenAnswer((_) => Future.value());

await repository.createOrder(strollerId: 's1', quantity: 2);

final body = verify(() => service.createOrder(captureAny())).captured.single as CreateOrderBodyObj;
expect(body.strollerId, equals('s1'));
expect(body.quantity, equals(2));

// bad — value-matches the body; identity equality never matches production's instance
verify(() => service.createOrder(const CreateOrderBodyObj(strollerId: 's1', quantity: 2))).called(1);
```

If ANY argument in a `when`/`verify` call uses a matcher, ALL of them must (mocktail rule) — make sibling args `any()`/`captureAny()` too. `any()`/`captureAny()` of a non-nullable custom type needs a `registerFallbackValue(...)` in `setUpAll`.

## Polymorphic Union DTOs

**MUST hand-write a discriminator `fromJson`** when one API field selects between DTO shapes — `json_serializable` has no equivalent of freezed's `@Freezed(unionKey:)`. Model the union as a `sealed` supertype with one `@JsonSerializable` subclass per variant.

```dart
// good — sealed supertype dispatches on the discriminator
sealed class const ItemObj() {
  factory ItemObj.fromJson(Map<String, dynamic> json) => switch (json['kind']) {
    ItemKind.physicalValue => PhysicalItemObj.fromJson(json),
    ItemKind.digitalValue => DigitalItemObj.fromJson(json),
    _ => throw CheckedFromJsonException(json, 'kind', 'ItemObj', 'Unknown item kind'),
  };

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class const PhysicalItemObj({required final String id, required final ItemKind kind})
    extends ItemObj {
  factory PhysicalItemObj.fromJson(Map<String, dynamic> json) => _$PhysicalItemObjFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PhysicalItemObjToJson(this);
}

// bad — freezed union in the data layer
@Freezed(unionKey: 'kind')
sealed class ItemObj with _$ItemObj {
  factory ItemObj.physical({required String id}) = PhysicalItemObj;
}
```

**Exception:** a `sealed` class with a single variant is not a union — declare it as a plain `class`, otherwise it cannot be instantiated.

## Services (Retrofit)

- **`@RestApi()`** on abstract class, **`@lazySingleton`** on it, **`@factoryMethod`** on the factory constructor
- **Return DTOs** (`Future<ResponseObj>`), never domain types
- Location: `lib/services/<domain>/<domain>_service.dart` with `obj/` and `response/` sub-folders; no barrel files
- Run `fvm dart run build_runner build` after changes
- The `Dio` instance comes from `lib/di/network_module.dart`

```dart
@lazySingleton
@RestApi()
abstract class StrollerService {
  @factoryMethod
  factory StrollerService(Dio dio) = _StrollerService;

  @GET('/api/v1/strollers')
  Future<StrollersResponseObj> getStrollers(@Query('page') int page);
}
```

## Response DTOs and Transformable

- **MUST create a DTO** implementing `Transformable<DomainModel>` for every API response that maps to a domain model
- **No manual `dynamic` parsing** in repositories — use `@JsonKey(name:, fromJson:)` on the DTO fields instead
- **Parameter defaults** (`final int count = 0`, `final String title = ''`) on DTO fields with nullable API values to avoid null handling in transform
- **`fromJson` callbacks** on `@JsonKey` for type coercion (e.g., `fromJson: int.parse` for stringified numbers)

```dart
@JsonSerializable()
class const StrollerResponseObj({
  required final String id,
  @JsonKey(name: 'brand_name') final String brand = '',
}) implements Transformable<Stroller> {
  factory StrollerResponseObj.fromJson(Map<String, dynamic> json) => _$StrollerResponseObjFromJson(json);

  Map<String, dynamic> toJson() => _$StrollerResponseObjToJson(this);

  @override
  Stroller transform() => Stroller(id: id, brand: brand);
}
```

## No Dynamic Types

- **MUST NOT use `dynamic`** in DTOs, repositories, or service interfaces — use `Object?` where the type is truly unknown
- **`List<String>`** for filter/query values, not `List<dynamic>`
- **Enums** for finite sets of API values (query types, filter operators, sort fields) — not magic strings

## API Enums

- **API-specific identifiers** (sort fields, filter operators, status codes) **MUST be enums** in the service's `obj/` folder — not hardcoded strings in repositories
- **Domain enums MUST NOT contain API strings** — the objects layer stays API-agnostic. Map domain → API enum via a private extension in the repository
- **MUST use `@JsonEnum(alwaysCreate: true)`** + `@JsonValue` per entry + generated `toJson()` — no manual `value` field
- **Pass enums directly** into typed DTO fields and service parameters — `json_serializable` and Retrofit serialize them automatically via `@JsonEnum`. Never call `.toJson()` explicitly when the field type accepts the enum

```dart
@JsonEnum(alwaysCreate: true)
enum StrollerSortObj {
  @JsonValue('price_asc') priceAsc,
  @JsonValue('price_desc') priceDesc;

  String? toJson() => _$StrollerSortObjEnumMap[this];
}

extension on StrollerSort {
  StrollerSortObj get _sortObj => switch (this) {
    .cheapestFirst => StrollerSortObj.priceAsc,
    .priciestFirst => StrollerSortObj.priceDesc,
  };
}
```

## Repositories

- **MUST extend `BaseRepository`**, annotated `@lazySingleton`, concrete class (no abstract interface + impl pair)
- **All API calls through guard methods** — never raw `await service.method()`
  - `guardApiCall()` — when `ResponseObj` implements `Transformable<Domain>`
  - `guardApiCallWithMap()` — custom DTO → domain mapping; prefer `ResponseObj.fromJson(data).transform()` inside the map callback
  - `guardApiCallVoid()` — no response body
- **Return domain models** from `lib/objects/`, never DTOs
- **No manual `try/catch`** — guards map `DioException` to `AppException` (`error-handling.md`)
- **No manual field parsing** — create a proper `Transformable` DTO instead of accessing `Map<String, dynamic>` keys directly
- Platform plugins: wrap in a repository in `lib/repositories/`, return domain models, handle permissions internally. UI widgets MUST NOT import platform packages directly (`geolocator`, `camera`, `local_auth`, etc.). Exceptions: visual-component packages and simple one-liner actions (`url_launcher`, `share_plus`).
- `@disposeMethod` on `dispose()` when a repository owns streams or controllers

`Future<Stroller> fetchStroller(String id) => guardApiCall(() => _service.getStroller(id));` or, with a custom map, `guardApiCallWithMap(() => _service.getStroller(id), (response) => response.toDomain())`.

## Repository Method Naming

- **Always `fetch` prefix**, never `get`
- `Future<List<Stroller>> fetchStrollers()` ✓
- `Future<List<Stroller>> getStrollers()` ✗

## Transformable Pattern

- `ResponseObj` MUST implement `Transformable<DomainModel>` with `transform()` override (shape shown in [Response DTOs and Transformable](#response-dtos-and-transformable) above)
- **Payload wrapper**: when API wraps items in a `payload` field, create `PayloadObj` inside `ResponseObj`

## Obj Conventions

- **Strings**: default `''` instead of nullable `String?`
- **Lists**: default `const []` instead of nullable `List?`
- **Booleans**: MUST have `is` prefix, map from API name with `@JsonKey`

```dart
class const ExampleObj({
  final String name = '',                                        // ✓ not String?
  final List<String> tags = const [],                            // ✓ not List<String>?
  @JsonKey(name: 'active') final bool isActive = false,          // ✓ is prefix + @JsonKey
});
```

## Enum Patterns

- `@JsonEnum(alwaysCreate: true)` on enum, `@JsonValue('API_VALUE')` on each case
- Transform via **extension on nullable type** with `_ => .undefined` fallback:

```dart
@JsonEnum(alwaysCreate: true)
enum StatusObj { @JsonValue('ACTIVE') active, @JsonValue('INACTIVE') inactive }

extension on StatusObj? {
  Status transform() => switch (this) {
    StatusObj.active => Status.active,
    StatusObj.inactive => Status.inactive,
    _ => Status.undefined,
  };
}
```

## Domain Models (`lib/objects/`)

- Freezed, immutable; exported through `lib/objects/objects.dart`
- All fields MUST use `required` — ensures `transform()` won't miss mapping any field (compile-time error)
- Domain enums include `undefined` as first case for unknown API values
- No `fromJson`/`toJson` — domain models are not serialized
- Provide `.empty()` and `isEmpty` only when a caller genuinely needs an empty value

## Naming Conventions

| Layer | Pattern | Example |
|-------|---------|---------|
| Response DTO | `*ResponseObj` | `StrollerResponseObj` |
| Inner DTO | `*Obj` | `StrollerObj` |
| Payload wrapper | `*PayloadObj` | `StrollersPayloadObj` |
| Request body | `*BodyObj` | `CreateOrderBodyObj` |
| Domain model | Clean name | `Stroller`, `Order` |
| Enum (API) | `*Obj` | `OrderStatusObj` |
| Enum (Domain) | Clean name | `OrderStatus` |

## Transform Patterns

- Nested object: `nestedObj?.transform()`
- List: `itemObjs.map((e) => e.transform()).toList()`
- Enum: `statusObj.transform()` (via extension)
- Timestamp: `DateTime.fromMillisecondsSinceEpoch(timestamp)`
- Nullable fallback: `optionalField ?? ''`
- Fallback chain: `primaryImage?.transform() ?? fallbackImage?.transform()`

## Dependency Injection

DI doctrine lives in `.claude/rules/di.md`. Quick reference for the data layer:

- **Repositories and services:** `@lazySingleton` (long-lived).
- **Retrofit `@RestApi`** abstract class: `@lazySingleton` + `@factoryMethod` on the factory constructor.
- **DTO classes:** no DI annotation (pure data).
- **Run `fvm dart run build_runner build`** after adding/changing any DI annotation.

## Scaffold: New Service

1. Find an existing service in `lib/services/` as a reference.
2. Create `lib/services/<domain>/<domain>_service.dart` — abstract class with `@RestApi()`, `@lazySingleton`, `@factoryMethod`.
3. Create response DTOs in `response/` and request/object DTOs in `obj/` — all `@JsonSerializable` with a primary constructor, never `@freezed`.
4. Use `@Path()`, `@Query()`, `@Body()` annotations as needed; `@JsonKey(name:)` and parameter defaults on DTOs.
5. Run `fvm dart run build_runner build` from `app/`.

## Scaffold: New Repository

1. Find an existing repository in `lib/repositories/` as a reference.
2. Create `<name>_repository.dart` — extend `BaseRepository`, inject the service via the constructor.
3. Wrap every API call in `guardApiCall` / `guardApiCallWithMap` / `guardApiCallVoid`.
4. Map DTOs → domain models in `lib/objects/`. Create new domain models if needed and export them from `objects.dart`.
5. Add `@lazySingleton`; add `@disposeMethod` on `dispose()` if applicable.
6. Run `fvm dart run build_runner build` from `app/`.

## Checklist

- [ ] No `@freezed` / `part '*.freezed.dart'` in `lib/services/` — DTOs use a primary constructor + `@JsonSerializable`
- [ ] Every primary-constructor parameter is `final`; collection and constructor defaults are `const`
- [ ] No hand-written `==`/`hashCode` on DTOs; tests use `any()` / `captureAny()` for body arguments
- [ ] Polymorphic DTOs use a `sealed` supertype with a hand-written discriminator `fromJson`
- [ ] A single-variant class is declared `class`, not `sealed class`
- [ ] Response DTOs implement `Transformable<DomainModel>` and are mapped in the repository, never leaked to the UI
- [ ] Repository methods use `fetch` prefix, guard methods, and no `try/catch`
- [ ] `fvm dart run build_runner build` re-run after adding or changing any serialized model
