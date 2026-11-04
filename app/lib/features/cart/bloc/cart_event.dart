part of 'cart_bloc.dart';

@freezed
sealed class CartEvent with _$CartEvent {
  const factory CartEvent.init() = _InitEvent;

  const factory CartEvent.retryPressed() = _RetryPressedEvent;

  const factory CartEvent.itemsChanged({required List<CartItem> items}) = _ItemsChangedEvent;

  const factory CartEvent.quantityChanged({
    required String strollerId,
    required String color,
    required int delta,
  }) = _QuantityChangedEvent;

  const factory CartEvent.deliverySelected({required String method}) = _DeliverySelectedEvent;

  const factory CartEvent.checkoutPressed() = _CheckoutPressedEvent;

  const factory CartEvent.catalogPressed() = _CatalogPressedEvent;
}
