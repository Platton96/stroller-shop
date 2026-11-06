import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stroller_shop/entities/entities.dart';
import 'package:stroller_shop/features/catalog/catalog/ui_models/stroller_card_vm.dart';
import 'package:stroller_shop/features/catalog/catalog/ui_models/type_chip_vm.dart';

part 'catalog_vm.freezed.dart';

@freezed
abstract class CatalogVM with _$CatalogVM {
  const factory CatalogVM({
    required String city,
    required StrollerSort sort,
    required List<TypeChipVM> typeChips,
    required List<StrollerCardVM> cards,
    required int totalCount,
    required bool hasMore,
    required int cartCount,
  }) = _CatalogVM;
}
