import 'package:freezed_annotation/freezed_annotation.dart';

part 'assistant_action.freezed.dart';

@freezed
sealed class AssistantAction with _$AssistantAction {
  const factory AssistantAction.addToCart({required String strollerId, required String color}) =
      AddToCartAssistantAction;

  const factory AssistantAction.unknown() = UnknownAssistantAction;
}
