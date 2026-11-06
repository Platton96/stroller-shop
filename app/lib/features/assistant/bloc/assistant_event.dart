part of 'assistant_bloc.dart';

@freezed
sealed class AssistantEvent with _$AssistantEvent {
  const factory AssistantEvent.init() = _InitEvent;

  const factory AssistantEvent.messageSubmitted({required String text}) = _MessageSubmittedEvent;

  const factory AssistantEvent.suggestionPressed({required String text}) = _SuggestionPressedEvent;

  const factory AssistantEvent.retryPressed() = _RetryPressedEvent;

  const factory AssistantEvent.strollerAsked({required Stroller stroller}) = _StrollerAskedEvent;

  const factory AssistantEvent.strollerPressed({required String strollerId}) =
      _StrollerPressedEvent;

  const factory AssistantEvent.addToCartPressed({required String strollerId}) =
      _AddToCartPressedEvent;

  const factory AssistantEvent.openCartPressed() = _OpenCartPressedEvent;

  const factory AssistantEvent.cartCountChanged({required int count}) = _CartCountChangedEvent;
}
