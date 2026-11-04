// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_response_obj.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShopResponseObj _$ShopResponseObjFromJson(
  Map<String, dynamic> json,
) => ShopResponseObj(
  name: json['name'] as String? ?? '',
  tagline: json['tagline'] as String? ?? '',
  city: json['city'] as String? ?? '',
  address: json['address'] as String? ?? '',
  phone: json['phone'] as String? ?? '',
  workingHours: json['working_hours'] as String? ?? '',
  currency: json['currency'] as String? ?? '',
  delivery:
      (json['delivery'] as List<dynamic>?)
          ?.map((e) => DeliveryOptionObj.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  payment: (json['payment'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const [],
  returns: json['returns'] as String? ?? '',
  warranty: json['warranty'] as String? ?? '',
  testDrive: json['test_drive'] as String? ?? '',
  disclaimer: json['disclaimer'] as String? ?? '',
);

DeliveryOptionObj _$DeliveryOptionObjFromJson(Map<String, dynamic> json) => DeliveryOptionObj(
  method: json['method'] as String? ?? '',
  title: json['title'] as String? ?? '',
  priceByn: (json['price_byn'] as num?)?.toInt() ?? 0,
  eta: json['eta'] as String? ?? '',
  freeFromByn: (json['free_from_byn'] as num?)?.toInt(),
);
