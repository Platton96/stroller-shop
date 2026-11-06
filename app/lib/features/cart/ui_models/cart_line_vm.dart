import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_line_vm.freezed.dart';

@freezed
abstract class CartLineVM with _$CartLineVM {
  const factory CartLineVM({
    required String strollerId,
    required String color,
    required String name,
    required String colorName,
    required String imageUrl,
    required int quantity,
    required int sumByn,
    required bool isAddedByAssistant,
  }) = _CartLineVM;
}
