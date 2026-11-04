import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_delivery_vm.freezed.dart';

@freezed
abstract class ShopDeliveryVM with _$ShopDeliveryVM {
  const factory ShopDeliveryVM({
    required String title,
    required String eta,
    required int priceByn,
    required int? freeFromByn,
  }) = _ShopDeliveryVM;
}
