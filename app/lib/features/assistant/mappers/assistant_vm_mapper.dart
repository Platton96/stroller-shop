import 'package:injectable/injectable.dart';
import 'package:stroller_shop/features/assistant/models/assistant_chat.dart';
import 'package:stroller_shop/features/assistant/models/chat_entry.dart';
import 'package:stroller_shop/features/assistant/ui_models/assistant_vm.dart';
import 'package:stroller_shop/features/assistant/ui_models/chat_item_vm.dart';
import 'package:stroller_shop/features/catalog/catalog/mappers/catalog_vm_mapper.dart';
import 'package:stroller_shop/l10n/app_strings.dart';

@injectable
class AssistantVMMapper {
  final CatalogVMMapper _catalogMapper;

  const AssistantVMMapper(this._catalogMapper);

  AssistantVM toAssistantVM(AssistantChat chat) => AssistantVM(
    reversedItems: [
      if (chat.isSending) const ChatItemVM.typing(),
      ...chat.entries.reversed.map(_toChatItemVM),
      const ChatItemVM.greeting(),
    ],
    suggestions: [
      if (!chat.entries.any((entry) => entry is UserMessageChatEntry)) ...[
        appStrings.assistantStarterTravel,
        appStrings.assistantStarterWinter,
        appStrings.assistantStarterBudget,
      ],
      ...chat.suggestions,
    ],
    isSending: chat.isSending,
    cartCount: chat.cartCount,
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
