import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stroller_shop/entities/entities.dart';

part 'cart.freezed.dart';

@freezed
abstract class Cart with _$Cart {
  const factory Cart({
    required List<CartItem> items,
    required List<DeliveryOption> deliveryOptions,
    required String? selectedDeliveryMethod,
  }) = _Cart;

  factory Cart.initial() =>
      const Cart(items: [], deliveryOptions: [], selectedDeliveryMethod: null);
}
