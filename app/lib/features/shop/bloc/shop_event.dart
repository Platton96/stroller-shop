part of 'shop_bloc.dart';

@freezed
sealed class ShopEvent with _$ShopEvent {
  const factory ShopEvent.init() = _InitEvent;

  const factory ShopEvent.retryPressed() = _RetryPressedEvent;
}
