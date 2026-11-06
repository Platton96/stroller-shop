import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stroller_shop/entities/entities.dart';

part 'catalog.freezed.dart';

@freezed
abstract class Catalog with _$Catalog {
  const factory Catalog({
    required StrollerFilter filter,
    required List<StrollerTypeInfo> types,
    required List<Stroller> strollers,
    required int total,
    required String city,
    required int cartCount,
  }) = _Catalog;

  factory Catalog.initial() => const Catalog(
    filter: StrollerFilter(),
    types: [],
    strollers: [],
    total: 0,
    city: '',
    cartCount: 0,
  );
}
