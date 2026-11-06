import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_option.freezed.dart';

@freezed
abstract class DeliveryOption with _$DeliveryOption {
  const factory DeliveryOption({
    required String method,
    required String title,
    required int priceByn,
    required String eta,
    required int? freeFromByn,
  }) = _DeliveryOption;
}
