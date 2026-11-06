import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:stroller_shop/core/exceptions/app_exception.dart';
import 'package:stroller_shop/core/navigation/app_routes.dart';
import 'package:stroller_shop/entities/entities.dart';
import 'package:stroller_shop/features/assistant/bloc/assistant_bloc.dart';
import 'package:stroller_shop/features/assistant/mappers/assistant_vm_mapper.dart';
import 'package:stroller_shop/features/assistant/mediators/ask_assistant_mediator.dart';
import 'package:stroller_shop/features/assistant/ui_models/chat_item_vm.dart';
import 'package:stroller_shop/features/catalog/catalog/mappers/catalog_vm_mapper.dart';
import 'package:stroller_shop/features/tabs/app_tab.dart';
import 'package:stroller_shop/features/tabs/mediators/open_tab_mediator.dart';
import 'package:stroller_shop/l10n/app_strings.dart';
import 'package:stroller_shop/repositories/assistant_repository.dart';
import 'package:stroller_shop/repositories/cart_repository.dart';

import '../../helpers/test_infrastructure.dart';

part 'assistant_bloc_test_data.dart';

class _MockAssistantRepository extends Mock implements AssistantRepository {}

class _MockCartRepository extends Mock implements CartRepository {}

void main() {
  setUpAll(() {
    registerFallbackValue(_stroller);
  });

  late _MockAssistantRepository assistantRepository;
  late _MockCartRepository cartRepository;
  late AskAssistantMediator askAssistantMediator;
  late OpenTabMediator openTabMediator;

  AssistantBloc createBloc() => AssistantBloc(
    assistantRepository,
    cartRepository,
    const AssistantVMMapper(CatalogVMMapper()),
    askAssistantMediator,
    openTabMediator,
  );

  setUp(() {
    setUpTestInfrastructure();
    assistantRepository = _MockAssistantRepository();
    cartRepository = _MockCartRepository();
    askAssistantMediator = AskAssistantMediator();
    openTabMediator = OpenTabMediator();
    when(() => cartRepository.watchCount()).thenAnswer((_) => const Stream<int>.empty());
    when(() => cartRepository.items).thenReturn(const []);
    when(
      () => cartRepository.add(
        stroller: any(named: 'stroller'),
        color: any(named: 'color'),
        isAddedByAssistant: any(named: 'isAddedByAssistant'),
      ),
    ).thenReturn(null);
    when(() => testAppNavigator.push<void>(any())).thenAnswer((_) async {});
  });

  tearDown(() async {
    await askAssistantMediator.close();
    await openTabMediator.close();
    reset(assistantRepository);
    reset(cartRepository);
    reset(testAppNavigator);
    reset(testToastService);
  });

  void stubReply(ChatReply reply) => when(
    () => assistantRepository.sendMessage(
      conversationId: any(named: 'conversationId'),
      message: any(named: 'message'),
      cart: any(named: 'cart'),
    ),
  ).thenAnswer((_) async => reply);

  group('init', () {
    blocTest<AssistantBloc, AssistantState>(
      'shows greeting and starter suggestions',
      build: createBloc,
      act: (bloc) => bloc.add(const .init()),
      expect: () => [
        _hasItems(const [_greeting]),
      ],
      verify: (bloc) {
        expect(bloc.state.data.suggestions, [
          'Лёгкая для путешествий',
          'Для зимы и бездорожья',
          'До 1500 BYN',
        ]);
      },
    );
  });

  group('messageSubmitted', () {
    blocTest<AssistantBloc, AssistantState>(
      'shows typing, then search note, text and cards with reply suggestions',
      setUp: () => stubReply(_reply),
      build: createBloc,
      act: (bloc) => bloc.add(const .messageSubmitted(text: 'Нужна лёгкая')),
      expect: () => [
        _hasItems(const [_typing, _userItem, _greeting], isSending: true),
        _hasItems([
          ChatItemVM.strollerCards(cards: [const CatalogVMMapper().toStrollerCardVM(_stroller)]),
          const ChatItemVM.assistantMessage(text: 'Вот варианты'),
          const ChatItemVM.searchNote(summary: 'до 1500 BYN'),
          _userItem,
          _greeting,
        ]),
      ],
      verify: (bloc) {
        expect(bloc.state.data.suggestions, ['Подробнее']);
        verify(
          () => assistantRepository.sendMessage(
            conversationId: '',
            message: 'Нужна лёгкая',
            cart: const [],
          ),
        ).called(1);
      },
    );

    blocTest<AssistantBloc, AssistantState>(
      'reuses the conversation id from the previous reply',
      setUp: () => stubReply(_reply),
      build: createBloc,
      act: (bloc) async {
        bloc.add(const .messageSubmitted(text: 'первое'));
        await pumpEventQueue();
        bloc.add(const .suggestionPressed(text: 'второе'));
      },
      verify: (_) {
        verify(
          () => assistantRepository.sendMessage(
            conversationId: 'c1',
            message: 'второе',
            cart: const [],
          ),
        ).called(1);
      },
    );

    blocTest<AssistantBloc, AssistantState>(
      'ignores blank messages',
      build: createBloc,
      act: (bloc) => bloc.add(const .messageSubmitted(text: '   ')),
      expect: () => <Matcher>[],
      verify: (_) => verifyNever(
        () => assistantRepository.sendMessage(
          conversationId: any(named: 'conversationId'),
          message: any(named: 'message'),
          cart: any(named: 'cart'),
        ),
      ),
    );

    blocTest<AssistantBloc, AssistantState>(
      'sends the current cart with the message',
      setUp: () {
        stubReply(_textReply);
        when(() => cartRepository.items).thenReturn(const [
          CartItem(stroller: _stroller, color: 'black', quantity: 2, isAddedByAssistant: false),
        ]);
      },
      build: createBloc,
      act: (bloc) => bloc.add(const .messageSubmitted(text: 'привет')),
      verify: (_) {
        verify(
          () => assistantRepository.sendMessage(
            conversationId: '',
            message: 'привет',
            cart: const [
              CartItem(stroller: _stroller, color: 'black', quantity: 2, isAddedByAssistant: false),
            ],
          ),
        ).called(1);
      },
    );
  });

  group('add_to_cart action', () {
    blocTest<AssistantBloc, AssistantState>(
      'adds the stroller to the cart as assistant choice and shows confirmation',
      setUp: () => stubReply(_addToCartReply),
      build: createBloc,
      act: (bloc) => bloc.add(const .messageSubmitted(text: 'возьму Fox')),
      verify: (bloc) {
        verify(
          () => cartRepository.add(stroller: _stroller, color: 'black', isAddedByAssistant: true),
        ).called(1);
        expect(
          bloc.state.data.reversedItems.first,
          const ChatItemVM.cartAdded(
            name: 'Bugaboo Fox',
            color: 'black',
            priceByn: 100,
            isPriceApproximate: false,
          ),
        );
      },
    );
  });

  group('errors', () {
    blocTest<AssistantBloc, AssistantState>(
      'shows error item and keeps the user message',
      setUp: () => when(
        () => assistantRepository.sendMessage(
          conversationId: any(named: 'conversationId'),
          message: any(named: 'message'),
          cart: any(named: 'cart'),
        ),
      ).thenThrow(const NoConnectionException()),
      build: createBloc,
      act: (bloc) => bloc.add(const .messageSubmitted(text: 'Нужна лёгкая')),
      expect: () => [
        _hasItems(const [_typing, _userItem, _greeting], isSending: true),
        _hasItems(const [
          ChatItemVM.error(exception: NoConnectionException()),
          _userItem,
          _greeting,
        ]),
      ],
    );

    blocTest<AssistantBloc, AssistantState>(
      'retry resends the failed message without duplicating it',
      setUp: () {
        var calls = 0;
        when(
          () => assistantRepository.sendMessage(
            conversationId: any(named: 'conversationId'),
            message: any(named: 'message'),
            cart: any(named: 'cart'),
          ),
        ).thenAnswer((_) async {
          calls++;
          if (calls == 1) {
            throw const NoConnectionException();
          }

          return _textReply;
        });
      },
      build: createBloc,
      act: (bloc) async {
        bloc.add(const .messageSubmitted(text: 'Нужна лёгкая'));
        await pumpEventQueue();
        bloc.add(const .retryPressed());
      },
      expect: () => [
        _hasItems(const [_typing, _userItem, _greeting], isSending: true),
        _hasItems(const [
          ChatItemVM.error(exception: NoConnectionException()),
          _userItem,
          _greeting,
        ]),
        _hasItems(const [_typing, _userItem, _greeting], isSending: true),
        _hasItems(const [ChatItemVM.assistantMessage(text: 'Готово'), _userItem, _greeting]),
      ],
      verify: (_) => verify(
        () => assistantRepository.sendMessage(
          conversationId: '',
          message: 'Нужна лёгкая',
          cart: const [],
        ),
      ).called(2),
    );
  });

  group('AskAssistantMediator', () {
    blocTest<AssistantBloc, AssistantState>(
      'sends a question about the stroller',
      setUp: () => stubReply(_textReply),
      build: createBloc,
      act: (_) => askAssistantMediator.notify(_stroller),
      verify: (bloc) {
        final question = appStrings.assistantAskAboutStroller('Bugaboo Fox');
        verify(
          () => assistantRepository.sendMessage(
            conversationId: '',
            message: question,
            cart: const [],
          ),
        ).called(1);
        expect(bloc.state.data.reversedItems.last, _greeting);
        expect(
          bloc.state.data.reversedItems.elementAt(bloc.state.data.reversedItems.length - 2),
          ChatItemVM.userMessage(text: question),
        );
      },
    );
  });

  group('strollerPressed', () {
    blocTest<AssistantBloc, AssistantState>(
      'opens stroller details',
      build: createBloc,
      act: (bloc) => bloc.add(const .strollerPressed(strollerId: 's1')),
      verify: (_) =>
          verify(() => testAppNavigator.push<void>(AppRoutes.strollerDetails('s1'))).called(1),
    );
  });

  group('addToCartPressed', () {
    blocTest<AssistantBloc, AssistantState>(
      'adds a stroller from a reply card and shows a toast',
      setUp: () {
        stubReply(_reply);
        when(() => testToastService.showSuccess(any())).thenReturn(null);
      },
      build: createBloc,
      act: (bloc) async {
        bloc.add(const .messageSubmitted(text: 'Нужна лёгкая'));
        await pumpEventQueue();
        bloc.add(const .addToCartPressed(strollerId: 's1'));
      },
      verify: (_) {
        verify(
          () => cartRepository.add(stroller: _stroller, color: 'black'),
        ).called(1);
        verify(() => testToastService.showSuccess(appStrings.cartAdded('Bugaboo Fox'))).called(1);
      },
    );

    blocTest<AssistantBloc, AssistantState>(
      'ignores unknown strollers',
      build: createBloc,
      act: (bloc) => bloc.add(const .addToCartPressed(strollerId: 'missing')),
      verify: (_) => verifyNever(
        () => cartRepository.add(
          stroller: any(named: 'stroller'),
          color: any(named: 'color'),
          isAddedByAssistant: any(named: 'isAddedByAssistant'),
        ),
      ),
    );
  });

  group('openCartPressed', () {
    test('asks tabs to open the cart', () async {
      final bloc = createBloc();
      final tabs = <AppTab>[];
      final subscription = openTabMediator.stream.listen(tabs.add);

      bloc.add(const .openCartPressed());
      await pumpEventQueue();

      expect(tabs, [AppTab.cart]);
      await subscription.cancel();
      await bloc.close();
    });
  });
}
