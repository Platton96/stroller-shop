import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stroller_shop/entities/shop/delivery_option.dart';

part 'shop.freezed.dart';

@freezed
abstract class Shop with _$Shop {
  const factory Shop({
    required String name,
    required String tagline,
    required String city,
    required String address,
    required String phone,
    required String workingHours,
    required String currency,
    required List<DeliveryOption> delivery,
    required List<String> payment,
    required String returns,
    required String warranty,
    required String testDrive,
    required String disclaimer,
  }) = _Shop;
}
