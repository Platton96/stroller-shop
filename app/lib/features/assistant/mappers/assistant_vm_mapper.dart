import 'package:injectable/injectable.dart';
import 'package:stroller_shop/features/assistant/models/assistant_data.dart';
import 'package:stroller_shop/features/assistant/models/assistant_vm.dart';
import 'package:stroller_shop/features/assistant/models/chat_entry.dart';
import 'package:stroller_shop/features/assistant/models/chat_item_vm.dart';
import 'package:stroller_shop/features/catalog/catalog/mappers/catalog_vm_mapper.dart';

@injectable
class AssistantVMMapper {
  const AssistantVMMapper(this._catalogMapper);

  final CatalogVMMapper _catalogMapper;

  AssistantVM toAssistantVM(AssistantData data) => AssistantVM(
    reversedItems: [
      if (data.isSending) const ChatItemVM.typing(),
      ...data.entries.reversed.map(_toChatItemVM),
      const ChatItemVM.greeting(),
    ],
    suggestions: data.suggestions,
    areStartersVisible: !data.entries.any((entry) => entry is UserMessageChatEntry),
    isSending: data.isSending,
    cartCount: data.cartCount,
  );

  ChatItemVM _toChatItemVM(ChatEntry entry) => switch (entry) {
    UserMessageChatEntry(:final text) => .userMessage(text: text),
    AssistantMessageChatEntry(:final text) => .assistantMessage(text: text),
    SearchNoteChatEntry(:final summary) => .searchNote(summary: summary),
    StrollersChatEntry(:final strollers) => .strollerCards(
      cards: strollers.map(_catalogMapper.toStrollerCardVM).toList(),
    ),
    CartAddedChatEntry(:final stroller, :final color) => .cartAdded(
      name: '${stroller.brand} ${stroller.model}',
      color: color,
      priceByn: stroller.priceByn,
      isPriceApproximate: stroller.isPriceApproximate,
    ),
    ErrorChatEntry(:final exception) => .error(exception: exception),
  };
}
