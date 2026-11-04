import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stroller_shop/features/assistant/models/chat_entry.dart';

part 'assistant_data.freezed.dart';

@freezed
abstract class AssistantData with _$AssistantData {
  const factory AssistantData({
    required List<ChatEntry> entries,
    required List<String> suggestions,
    required bool isSending,
    required int cartCount,
  }) = _AssistantData;

  factory AssistantData.initial() =>
      const AssistantData(entries: [], suggestions: [], isSending: false, cartCount: 0);
}
