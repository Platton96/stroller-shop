import 'package:stroller_shop/core/bloc/base_bloc.dart';
import 'package:stroller_shop/core/navigation/app_routes.dart';
import 'package:stroller_shop/features/assistant/mappers/assistant_vm_mapper.dart';
import 'package:stroller_shop/features/assistant/mediators/ask_assistant_mediator.dart';
import 'package:stroller_shop/features/assistant/models/assistant_chat.dart';
import 'package:stroller_shop/features/assistant/models/chat_entry.dart';
import 'package:stroller_shop/features/assistant/ui_models/assistant_vm.dart';
import 'package:stroller_shop/features/tabs/mediators/open_tab_mediator.dart';
import 'package:stroller_shop/l10n/app_strings.dart';
import 'package:stroller_shop/repositories/assistant_repository.dart';
import 'package:stroller_shop/repositories/cart_repository.dart';

part 'assistant_bloc.freezed.dart';
part 'assistant_event.dart';
part 'assistant_state.dart';

@injectable
class AssistantBloc extends BaseBloc<AssistantEvent, AssistantState> {
  final AssistantRepository _assistantRepository;
  final CartRepository _cartRepository;
  final AssistantVMMapper _mapper;
  final AskAssistantMediator _askAssistantMediator;
  final OpenTabMediator _openTabMediator;

  var _chat = AssistantChat.initial();
  var _conversationId = '';
  var _lastMessage = '';

  AssistantBloc(
    this._assistantRepository,
    this._cartRepository,
    this._mapper,
    this._askAssistantMediator,
    this._openTabMediator,
  ) : super(.initial(data: _mapper.toAssistantVM(AssistantChat.initial()))) {
    addDisposables([
      _cartRepository.watchCount().listen(_handleCartCount),
      _askAssistantMediator.stream.listen(_handleAskAssistant),
    ]);
    on<AssistantEvent>(
      (event, emit) => switch (event) {
        _InitEvent() => _handleInitEvent(emit, event),
        _MessageSubmittedEvent() => _handleMessageSubmittedEvent(emit, event),
        _SuggestionPressedEvent() => _handleSuggestionPressedEvent(emit, event),
        _RetryPressedEvent() => _handleRetryPressedEvent(emit, event),
        _StrollerAskedEvent() => _handleStrollerAskedEvent(emit, event),
        _StrollerPressedEvent() => _handleStrollerPressedEvent(emit, event),
        _AddToCartPressedEvent() => _handleAddToCartPressedEvent(emit, event),
        _OpenCartPressedEvent() => _handleOpenCartPressedEvent(emit, event),
        _CartCountChangedEvent() => _handleCartCountChangedEvent(emit, event),
      },
    );
  }

  List<ChatEntry> get _entriesWithoutErrors =>
      _chat.entries.whereNot((entry) => entry is ErrorChatEntry).toList();

  Iterable<Stroller> get _knownStrollers => _chat.entries.expand(_toStrollers);

  @override
  void handleGeneralException(
    AssistantEvent event,
    Emitter<AssistantState> emit,
    Exception exception,
  ) {
    if (_chat.isSending) {
      _chat = _chat.copyWith(
        entries: [
          ..._chat.entries,
          ChatEntry.error(exception: exception),
        ],
        isSending: false,
      );
      _emitReady(emit);
    }
  }

  void _handleInitEvent(Emitter<AssistantState> emit, _InitEvent event) => _emitReady(emit);

  Future<void> _handleMessageSubmittedEvent(
    Emitter<AssistantState> emit,
    _MessageSubmittedEvent event,
  ) => _sendMessage(emit, event.text);

  Future<void> _handleSuggestionPressedEvent(
    Emitter<AssistantState> emit,
    _SuggestionPressedEvent event,
  ) => _sendMessage(emit, event.text);

  Future<void> _handleRetryPressedEvent(
    Emitter<AssistantState> emit,
    _RetryPressedEvent event,
  ) async {
    if (_lastMessage.isEmpty || _chat.isSending) {
      return;
    }
    await _requestReply(emit, entries: _entriesWithoutErrors);
  }

  Future<void> _handleStrollerAskedEvent(
    Emitter<AssistantState> emit,
    _StrollerAskedEvent event,
  ) => _sendMessage(
    emit,
    appStrings.assistantAskAboutStroller('${event.stroller.brand} ${event.stroller.model}'),
  );

  void _handleStrollerPressedEvent(Emitter<AssistantState> emit, _StrollerPressedEvent event) =>
      unawaited(appNavigator.push<void>(AppRoutes.strollerDetails(event.strollerId)));

  void _handleAddToCartPressedEvent(Emitter<AssistantState> emit, _AddToCartPressedEvent event) {
    final stroller = _knownStrollers.firstWhereOrNull((item) => item.id == event.strollerId);
    if (stroller == null) {
      return;
    }
    _cartRepository.add(stroller: stroller, color: stroller.colors.firstOrNull ?? '');
    toastService.showSuccess(appStrings.cartAdded('${stroller.brand} ${stroller.model}'));
  }

  void _handleOpenCartPressedEvent(Emitter<AssistantState> emit, _OpenCartPressedEvent event) =>
      _openTabMediator.notify(.cart);

  void _handleCartCountChangedEvent(
    Emitter<AssistantState> emit,
    _CartCountChangedEvent event,
  ) {
    _chat = _chat.copyWith(cartCount: event.count);
    _emitReady(emit);
  }

  void _handleCartCount(int count) => add(.cartCountChanged(count: count));

  void _handleAskAssistant(Stroller stroller) => add(.strollerAsked(stroller: stroller));

  Future<void> _sendMessage(Emitter<AssistantState> emit, String text) async {
    final message = text.trim();
    if (message.isEmpty || _chat.isSending) {
      return;
    }
    _lastMessage = message;
    await _requestReply(
      emit,
      entries: [
        ..._entriesWithoutErrors,
        ChatEntry.userMessage(text: message),
      ],
    );
  }

  Future<void> _requestReply(
    Emitter<AssistantState> emit, {
    required List<ChatEntry> entries,
  }) async {
    _chat = _chat.copyWith(entries: entries, suggestions: const [], isSending: true);
    _emitReady(emit);
    final reply = await _assistantRepository.sendMessage(
      conversationId: _conversationId,
      message: _lastMessage,
      cart: _cartRepository.items,
    );
    _conversationId = reply.conversationId;
    final cartAddedEntries = _applyActions(reply);
    _chat = _chat.copyWith(
      entries: [..._chat.entries, ..._toReplyEntries(reply), ...cartAddedEntries],
      suggestions: reply.suggestions,
      isSending: false,
    );
    _emitReady(emit);
  }

  List<ChatEntry> _toReplyEntries(ChatReply reply) => [
    ...reply.searches.map((search) => ChatEntry.searchNote(summary: search.summary)),
    if (reply.text.trim().isNotEmpty) ChatEntry.assistantMessage(text: reply.text.trim()),
    if (reply.strollers.isNotEmpty) ChatEntry.strollers(strollers: reply.strollers),
  ];

  List<ChatEntry> _applyActions(ChatReply reply) => reply.actions
      .whereType<AddToCartAssistantAction>()
      .map((action) => _addToCartByAssistant(action, reply.strollers))
      .nonNulls
      .toList();

  ChatEntry? _addToCartByAssistant(AddToCartAssistantAction action, List<Stroller> strollers) {
    final stroller = [
      ...strollers,
      ..._knownStrollers,
    ].firstWhereOrNull((item) => item.id == action.strollerId);
    if (stroller == null) {
      return null;
    }
    final color = action.color.isEmpty ? stroller.colors.firstOrNull ?? '' : action.color;
    _cartRepository.add(stroller: stroller, color: color, isAddedByAssistant: true);

    return ChatEntry.cartAdded(stroller: stroller, color: color);
  }

  Iterable<Stroller> _toStrollers(ChatEntry entry) => switch (entry) {
    StrollersChatEntry(:final strollers) => strollers,
    CartAddedChatEntry(:final stroller) => [stroller],
    UserMessageChatEntry() ||
    AssistantMessageChatEntry() ||
    SearchNoteChatEntry() ||
    ErrorChatEntry() => const [],
  };

  void _emitReady(Emitter<AssistantState> emit) => emit(.ready(data: _mapper.toAssistantVM(_chat)));
}
