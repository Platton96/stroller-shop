import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stroller_shop/entities/assistant/assistant_action.dart';
import 'package:stroller_shop/entities/catalog/stroller.dart';

part 'chat_reply.freezed.dart';

@freezed
abstract class ChatReply with _$ChatReply {
  const factory ChatReply({
    required String conversationId,
    required String text,
    required List<Stroller> strollers,
    required List<AssistantAction> actions,
    required List<AssistantSearch> searches,
    required List<String> suggestions,
  }) = _ChatReply;
}

@freezed
abstract class AssistantSearch with _$AssistantSearch {
  const factory AssistantSearch({required String summary, required int found}) = _AssistantSearch;
}
