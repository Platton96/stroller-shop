import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stroller_shop/objects/objects.dart';

part 'catalog_data.freezed.dart';

@freezed
abstract class CatalogData with _$CatalogData {
  const factory CatalogData({
    required StrollerFilter filter,
    required List<StrollerTypeInfo> types,
    required List<Stroller> strollers,
    required int total,
    required String city,
    required int cartCount,
  }) = _CatalogData;

  factory CatalogData.initial() => const CatalogData(
    filter: StrollerFilter(),
    types: [],
    strollers: [],
    total: 0,
    city: '',
    cartCount: 0,
  );
}
