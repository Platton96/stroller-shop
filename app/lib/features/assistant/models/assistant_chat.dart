import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stroller_shop/features/assistant/models/chat_entry.dart';

part 'assistant_chat.freezed.dart';

@freezed
abstract class AssistantChat with _$AssistantChat {
  const factory AssistantChat({
    required List<ChatEntry> entries,
    required List<String> suggestions,
    required bool isSending,
    required int cartCount,
  }) = _AssistantChat;

  factory AssistantChat.initial() =>
      const AssistantChat(entries: [], suggestions: [], isSending: false, cartCount: 0);
}
