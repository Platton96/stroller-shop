import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stroller_shop/features/cart/ui_models/cart_line_vm.dart';
import 'package:stroller_shop/features/cart/ui_models/delivery_option_vm.dart';

part 'cart_vm.freezed.dart';

@freezed
abstract class CartVM with _$CartVM {
  const factory CartVM({
    required List<CartLineVM> lines,
    required List<DeliveryOptionVM> deliveryOptions,
    required int itemsCount,
    required int goodsTotalByn,
    required int shippingByn,
    required int totalByn,
    required bool isEmpty,
  }) = _CartVM;
}
