import 'package:injectable/injectable.dart';
import 'package:stroller_shop/objects/objects.dart';
import 'package:stroller_shop/repositories/base_repository.dart';
import 'package:stroller_shop/services/catalog/catalog_service.dart';

@lazySingleton
class CatalogRepository extends BaseRepository {
  final CatalogService _service;

  CatalogRepository(this._service);

  Future<List<StrollerTypeInfo>> fetchTypes() => guardApiCallWithMap(
    _service.getTypes,
    map: (types) =>
        types.map((type) => type.transform()).where((info) => info.type != .undefined).toList(),
  );

  Future<StrollersPage> fetchStrollers({
    required StrollerFilter filter,
    required int limit,
    required int offset,
  }) => guardApiCall(
    () => _service.getStrollers(
      query: filter.query.isEmpty ? null : filter.query,
      types: filter.types.isEmpty
          ? null
          : filter.types.map((type) => type._typeObj?.toJson()).nonNulls.join(','),
      isInStockOnly: filter.isInStockOnly ? true : null,
      sort: filter.sort._sortObj.toJson(),
      limit: limit,
      offset: offset,
    ),
  );

  Future<Stroller> fetchStroller(String id) => guardApiCall(() => _service.getStroller(id));
}

extension on StrollerType {
  StrollerTypeObj? get _typeObj => switch (this) {
    .modular2in1 => .modular2in1,
    .modular3in1 => .modular3in1,
    .stroll => .stroll,
    .travel => .travel,
    .cane => .cane,
    .twin => .twin,
    .jogger => .jogger,
    .undefined => null,
  };
}

extension on StrollerSort {
  StrollerSortObj get _sortObj => switch (this) {
    .relevance => .relevance,
    .priceAsc => .priceAsc,
    .priceDesc => .priceDesc,
    .rating => .rating,
    .weight => .weight,
  };
}
