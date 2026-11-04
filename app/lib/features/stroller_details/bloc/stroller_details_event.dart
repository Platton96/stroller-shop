part of 'stroller_details_bloc.dart';

@freezed
sealed class StrollerDetailsEvent with _$StrollerDetailsEvent {
  const factory StrollerDetailsEvent.init() = _InitEvent;

  const factory StrollerDetailsEvent.retryPressed() = _RetryPressedEvent;

  const factory StrollerDetailsEvent.colorSelected({required String color}) = _ColorSelectedEvent;

  const factory StrollerDetailsEvent.addToCartPressed() = _AddToCartPressedEvent;

  const factory StrollerDetailsEvent.askAssistantPressed() = _AskAssistantPressedEvent;

  const factory StrollerDetailsEvent.backPressed() = _BackPressedEvent;
}
