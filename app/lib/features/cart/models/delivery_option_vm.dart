import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_option_vm.freezed.dart';

@freezed
abstract class DeliveryOptionVM with _$DeliveryOptionVM {
  const factory DeliveryOptionVM({
    required String method,
    required String title,
    required String eta,
    required int? freeFromByn,
    required int costByn,
    required bool isSelected,
  }) = _DeliveryOptionVM;
}
