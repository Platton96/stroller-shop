import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:stroller_shop/entities/entities.dart';
import 'package:stroller_shop/features/catalog/catalog/models/catalog.dart';
import 'package:stroller_shop/features/catalog/catalog/ui_models/catalog_vm.dart';
import 'package:stroller_shop/features/catalog/catalog/ui_models/stroller_card_vm.dart';
import 'package:stroller_shop/features/catalog/catalog/ui_models/type_chip_vm.dart';
import 'package:stroller_shop/l10n/app_strings.dart';

@injectable
class CatalogVMMapper {
  const CatalogVMMapper();

  CatalogVM toCatalogVM(Catalog catalog) => CatalogVM(
    city: catalog.city,
    sort: catalog.filter.sort,
    typeChips: _toTypeChips(catalog),
    cards: catalog.strollers.map(toStrollerCardVM).toList(),
    totalCount: catalog.total,
    hasMore: catalog.strollers.length < catalog.total,
    cartCount: catalog.cartCount,
  );

  StrollerCardVM toStrollerCardVM(Stroller stroller) => StrollerCardVM(
    id: stroller.id,
    brand: stroller.brand,
    model: stroller.model,
    priceByn: stroller.priceByn,
    isPriceApproximate: stroller.isPriceApproximate,
    weightKg: stroller.weightKg,
    ageFromMonths: stroller.ageFromMonths,
    isCabinLuggage: stroller.isCabinLuggage,
    imageUrl: stroller.imageUrl,
  );

  List<TypeChipVM> _toTypeChips(Catalog catalog) {
    final selectedTypes = catalog.filter.types;

    return [
      TypeChipVM(
        type: null,
        label: appStrings.catalogAllTypes,
        count: catalog.types.map((info) => info.count).sum,
        isSelected: selectedTypes.isEmpty,
      ),
      ...catalog.types.map(
        (info) => TypeChipVM(
          type: info.type,
          label: info.label,
          count: info.count,
          isSelected: selectedTypes.contains(info.type),
        ),
      ),
    ];
  }
}
