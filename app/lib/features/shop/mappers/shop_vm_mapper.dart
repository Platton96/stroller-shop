import 'package:injectable/injectable.dart';
import 'package:stroller_shop/entities/entities.dart';
import 'package:stroller_shop/features/shop/ui_models/shop_delivery_vm.dart';
import 'package:stroller_shop/features/shop/ui_models/shop_vm.dart';

@injectable
class ShopVMMapper {
  const ShopVMMapper();

  ShopVM toShopVM(Shop shop) => ShopVM(
    name: shop.name,
    tagline: shop.tagline,
    address: shop.address,
    phone: shop.phone,
    workingHours: shop.workingHours,
    delivery: shop.delivery.map(_toShopDeliveryVM).toList(),
    payment: shop.payment,
    returns: shop.returns,
    warranty: shop.warranty,
    testDrive: shop.testDrive,
    disclaimer: shop.disclaimer,
  );

  ShopDeliveryVM _toShopDeliveryVM(DeliveryOption option) => ShopDeliveryVM(
    title: option.title,
    eta: option.eta,
    priceByn: option.priceByn,
    freeFromByn: option.freeFromByn,
  );
}
