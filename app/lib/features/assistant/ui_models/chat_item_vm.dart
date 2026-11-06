import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stroller_shop/features/catalog/catalog/ui_models/stroller_card_vm.dart';

part 'chat_item_vm.freezed.dart';

@freezed
sealed class ChatItemVM with _$ChatItemVM {
  const factory ChatItemVM.greeting() = GreetingChatItemVM;

  const factory ChatItemVM.userMessage({required String text}) = UserMessageChatItemVM;

  const factory ChatItemVM.assistantMessage({required String text}) = AssistantMessageChatItemVM;

  const factory ChatItemVM.searchNote({required String summary}) = SearchNoteChatItemVM;

  const factory ChatItemVM.strollerCards({required List<StrollerCardVM> cards}) =
      StrollerCardsChatItemVM;

  const factory ChatItemVM.cartAdded({
    required String name,
    required String color,
    required int priceByn,
    required bool isPriceApproximate,
  }) = CartAddedChatItemVM;

  const factory ChatItemVM.typing() = TypingChatItemVM;

  const factory ChatItemVM.error({required Exception exception}) = ErrorChatItemVM;
}
