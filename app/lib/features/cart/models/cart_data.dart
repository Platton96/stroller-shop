import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stroller_shop/objects/objects.dart';

part 'cart_data.freezed.dart';

@freezed
abstract class CartData with _$CartData {
  const factory CartData({
    required List<CartItem> items,
    required List<DeliveryOption> deliveryOptions,
    required String? selectedDeliveryMethod,
  }) = _CartData;

  factory CartData.initial() =>
      const CartData(items: [], deliveryOptions: [], selectedDeliveryMethod: null);
}
