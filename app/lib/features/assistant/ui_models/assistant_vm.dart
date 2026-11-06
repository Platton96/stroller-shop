import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stroller_shop/features/assistant/ui_models/chat_item_vm.dart';

part 'assistant_vm.freezed.dart';

@freezed
abstract class AssistantVM with _$AssistantVM {
  const factory AssistantVM({
    required List<ChatItemVM> reversedItems,
    required List<String> suggestions,
    required bool isSending,
    required int cartCount,
  }) = _AssistantVM;
}
