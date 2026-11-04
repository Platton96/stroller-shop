import 'package:flutter/material.dart';
import 'package:stroller_shop/core/bloc/app_bloc_provider.dart';
import 'package:stroller_shop/core/bloc/base_bloc.dart';
import 'package:stroller_shop/features/assistant/bloc/assistant_bloc.dart';
import 'package:stroller_shop/features/assistant/models/assistant_vm.dart';
import 'package:stroller_shop/features/assistant/models/chat_item_vm.dart';
import 'package:stroller_shop/features/assistant/widgets/assistant_header.dart';
import 'package:stroller_shop/features/assistant/widgets/cart_added_card.dart';
import 'package:stroller_shop/features/assistant/widgets/chat_bubble.dart';
import 'package:stroller_shop/features/assistant/widgets/chat_error_message.dart';
import 'package:stroller_shop/features/assistant/widgets/chat_input_bar.dart';
import 'package:stroller_shop/features/assistant/widgets/search_note.dart';
import 'package:stroller_shop/features/assistant/widgets/stroller_card_list.dart';
import 'package:stroller_shop/features/assistant/widgets/suggestion_list.dart';
import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/ui_kit/widgets/error_view.dart';

const EdgeInsets _gutter = .symmetric(horizontal: 16);

class AssistantScreen extends StatelessWidget {
  const AssistantScreen({super.key});

  @override
  Widget build(BuildContext context) => AppBlocProvider<AssistantBloc>(
    postCreate: (bloc) => bloc.add(const .init()),
    child: const _AssistantView(),
  );
}

class _AssistantView extends StatelessWidget {
  const _AssistantView();

  @override
  Widget build(BuildContext context) => BlocBuilder<AssistantBloc, AssistantState>(
    builder: (context, state) => Column(
      children: [
        AssistantHeader(
          cartCount: state.data.cartCount,
          onCartPressed: () => context.read<AssistantBloc>().add(const .openCartPressed()),
        ),
        Expanded(child: _ChatList(vm: state.data)),
        ChatInputBar(
          isEnabled: !state.data.isSending,
          onSubmitted: (text) => context.read<AssistantBloc>().add(.messageSubmitted(text: text)),
        ),
      ],
    ),
  );
}

class _ChatList extends StatelessWidget {
  const _ChatList({required this.vm});

  final AssistantVM vm;

  @override
  Widget build(BuildContext context) {
    final strings = S.of(context);
    final suggestions = [
      if (vm.areStartersVisible) ...[
        strings.assistantStarterTravel,
        strings.assistantStarterWinter,
        strings.assistantStarterBudget,
      ],
      ...vm.suggestions,
    ];
    final suggestionsCount = suggestions.isEmpty ? 0 : 1;

    return ListView.separated(
      reverse: true,
      keyboardDismissBehavior: .onDrag,
      padding: const .symmetric(vertical: 16),
      itemCount: vm.reversedItems.length + suggestionsCount,
      separatorBuilder: (_, _) => const SizedBox(height: 10),
      itemBuilder: (context, index) => index < suggestionsCount
          ? Padding(
              padding: _gutter,
              child: SuggestionList(
                suggestions: suggestions,
                onPressed: (text) =>
                    context.read<AssistantBloc>().add(.suggestionPressed(text: text)),
              ),
            )
          : _ChatItem(item: vm.reversedItems[index - suggestionsCount]),
    );
  }
}

class _ChatItem extends StatelessWidget {
  const _ChatItem({required this.item});

  final ChatItemVM item;

  @override
  Widget build(BuildContext context) {
    if (item case StrollerCardsChatItemVM(:final cards)) {
      return StrollerCardList(
        cards: cards,
        onPressed: (strollerId) =>
            context.read<AssistantBloc>().add(.strollerPressed(strollerId: strollerId)),
        onAddToCartPressed: (strollerId) =>
            context.read<AssistantBloc>().add(.addToCartPressed(strollerId: strollerId)),
      );
    }

    return Padding(
      padding: _gutter,
      child: _MessageItem(item: item),
    );
  }
}

class _MessageItem extends StatelessWidget {
  const _MessageItem({required this.item});

  final ChatItemVM item;

  @override
  Widget build(BuildContext context) {
    final strings = S.of(context);

    return switch (item) {
      GreetingChatItemVM() => ChatBubble.assistant(child: Text(strings.assistantGreeting)),
      UserMessageChatItemVM(:final text) => ChatBubble.user(child: Text(text)),
      AssistantMessageChatItemVM(:final text) => ChatBubble.assistant(child: Text(text)),
      SearchNoteChatItemVM(:final summary) => SearchNote(summary: summary),
      StrollerCardsChatItemVM() => const SizedBox.shrink(),
      CartAddedChatItemVM(:final name, :final color, :final priceByn, :final isPriceApproximate) =>
        CartAddedCard(
          name: name,
          color: color,
          priceByn: priceByn,
          isPriceApproximate: isPriceApproximate,
          onOpenCartPressed: () => context.read<AssistantBloc>().add(const .openCartPressed()),
        ),
      TypingChatItemVM() => ChatBubble.assistant(
        child: Semantics(
          label: strings.assistantTypingLabel,
          child: const SizedBox.square(
            dimension: 18,
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
        ),
      ),
      ErrorChatItemVM(:final exception) => ChatErrorMessage(
        message: exception.localizedMessage(strings),
        onRetryPressed: () => context.read<AssistantBloc>().add(const .retryPressed()),
      ),
    };
  }
}
