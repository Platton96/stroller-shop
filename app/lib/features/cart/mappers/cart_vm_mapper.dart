import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:stroller_shop/features/cart/models/cart_data.dart';
import 'package:stroller_shop/features/cart/models/cart_line_vm.dart';
import 'package:stroller_shop/features/cart/models/cart_vm.dart';
import 'package:stroller_shop/features/cart/models/delivery_option_vm.dart';
import 'package:stroller_shop/objects/objects.dart';

@injectable
class CartVMMapper {
  const CartVMMapper();

  CartVM toCartVM(CartData data) {
    final goodsTotal = data.items.map((item) => item.stroller.priceByn * item.quantity).sum;
    final options = data.deliveryOptions
        .map((option) => _toDeliveryOptionVM(option, data, goodsTotal))
        .toList();
    final shipping = options.firstWhereOrNull((option) => option.isSelected)?.costByn ?? 0;

    return CartVM(
      lines: data.items.map(_toCartLineVM).toList(),
      deliveryOptions: options,
      itemsCount: data.items.map((item) => item.quantity).sum,
      goodsTotalByn: goodsTotal,
      shippingByn: shipping,
      totalByn: goodsTotal + shipping,
      isEmpty: data.items.isEmpty,
    );
  }

  CartLineVM _toCartLineVM(CartItem item) => CartLineVM(
    strollerId: item.stroller.id,
    color: item.color,
    name: '${item.stroller.brand} ${item.stroller.model}',
    colorName: item.color,
    imageUrl: item.stroller.imageUrl,
    quantity: item.quantity,
    sumByn: item.stroller.priceByn * item.quantity,
    isAddedByAssistant: item.isAddedByAssistant,
  );

  DeliveryOptionVM _toDeliveryOptionVM(DeliveryOption option, CartData data, int goodsTotal) {
    final freeFrom = option.freeFromByn;
    final isFree = freeFrom != null && goodsTotal >= freeFrom;

    return DeliveryOptionVM(
      method: option.method,
      title: option.title,
      eta: option.eta,
      freeFromByn: freeFrom,
      costByn: isFree ? 0 : option.priceByn,
      isSelected: option.method == data.selectedDeliveryMethod,
    );
  }
}
