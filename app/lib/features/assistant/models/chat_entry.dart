import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stroller_shop/entities/entities.dart';

part 'chat_entry.freezed.dart';

@freezed
sealed class ChatEntry with _$ChatEntry {
  const factory ChatEntry.userMessage({required String text}) = UserMessageChatEntry;

  const factory ChatEntry.assistantMessage({required String text}) = AssistantMessageChatEntry;

  const factory ChatEntry.searchNote({required String summary}) = SearchNoteChatEntry;

  const factory ChatEntry.strollers({required List<Stroller> strollers}) = StrollersChatEntry;

  const factory ChatEntry.cartAdded({required Stroller stroller, required String color}) =
      CartAddedChatEntry;

  const factory ChatEntry.error({required Exception exception}) = ErrorChatEntry;
}
