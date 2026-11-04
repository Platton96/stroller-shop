import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stroller_shop/objects/catalog/stroller.dart';

part 'cart_item.freezed.dart';

@freezed
abstract class CartItem with _$CartItem {
  const factory CartItem({
    required Stroller stroller,
    required String color,
    required int quantity,
    required bool isAddedByAssistant,
  }) = _CartItem;
}
