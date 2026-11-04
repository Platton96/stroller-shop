part of 'assistant_bloc.dart';

@freezed
sealed class AssistantState with _$AssistantState {
  const factory AssistantState.initial({required AssistantVM data}) = AssistantInitialState;

  const factory AssistantState.ready({required AssistantVM data}) = AssistantReadyState;
}
