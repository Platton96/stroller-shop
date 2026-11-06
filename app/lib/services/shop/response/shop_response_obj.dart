import 'package:json_annotation/json_annotation.dart';
import 'package:stroller_shop/entities/entities.dart';

part 'shop_response_obj.g.dart';

@JsonSerializable(createToJson: false)
class const ShopResponseObj({
  final String name = '',
  final String tagline = '',
  final String city = '',
  final String address = '',
  final String phone = '',
  @JsonKey(name: 'working_hours') final String workingHours = '',
  final String currency = '',
  final List<DeliveryOptionObj> delivery = const [],
  final List<String> payment = const [],
  final String returns = '',
  final String warranty = '',
  @JsonKey(name: 'test_drive') final String testDrive = '',
  final String disclaimer = '',
}) implements Transformable<Shop> {
  factory ShopResponseObj.fromJson(Map<String, Object?> json) => _$ShopResponseObjFromJson(json);

  @override
  Shop transform() => Shop(
    name: name,
    tagline: tagline,
    city: city,
    address: address,
    phone: phone,
    workingHours: workingHours,
    currency: currency,
    delivery: delivery.map((option) => option.transform()).toList(),
    payment: payment,
    returns: returns,
    warranty: warranty,
    testDrive: testDrive,
    disclaimer: disclaimer,
  );
}

@JsonSerializable(createToJson: false)
class const DeliveryOptionObj({
  final String method = '',
  final String title = '',
  @JsonKey(name: 'price_byn') final int priceByn = 0,
  final String eta = '',
  @JsonKey(name: 'free_from_byn') final int? freeFromByn,
}) implements Transformable<DeliveryOption> {
  factory DeliveryOptionObj.fromJson(Map<String, Object?> json) =>
      _$DeliveryOptionObjFromJson(json);

  @override
  DeliveryOption transform() => DeliveryOption(
    method: method,
    title: title,
    priceByn: priceByn,
    eta: eta,
    freeFromByn: freeFromByn,
  );
}
