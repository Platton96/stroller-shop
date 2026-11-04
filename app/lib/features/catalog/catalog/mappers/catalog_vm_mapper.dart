import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:stroller_shop/features/catalog/catalog/models/catalog_data.dart';
import 'package:stroller_shop/features/catalog/catalog/models/catalog_vm.dart';
import 'package:stroller_shop/features/catalog/catalog/models/stroller_card_vm.dart';
import 'package:stroller_shop/features/catalog/catalog/models/type_chip_vm.dart';
import 'package:stroller_shop/objects/objects.dart';

@injectable
class CatalogVMMapper {
  const CatalogVMMapper();

  CatalogVM toCatalogVM(CatalogData data) => CatalogVM(
    city: data.city,
    sort: data.filter.sort,
    typeChips: _toTypeChips(data),
    cards: data.strollers.map(toStrollerCardVM).toList(),
    totalCount: data.total,
    hasMore: data.strollers.length < data.total,
    cartCount: data.cartCount,
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

  List<TypeChipVM> _toTypeChips(CatalogData data) {
    final selectedTypes = data.filter.types;

    return [
      TypeChipVM.all(
        count: data.types.map((info) => info.count).sum,
        isSelected: selectedTypes.isEmpty,
      ),
      ...data.types.map(
        (info) => TypeChipVM.type(
          type: info.type,
          label: info.label,
          count: info.count,
          isSelected: selectedTypes.contains(info.type),
        ),
      ),
    ];
  }
}
