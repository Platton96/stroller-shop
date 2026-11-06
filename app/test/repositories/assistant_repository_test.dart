import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:stroller_shop/core/exceptions/app_exception.dart';
import 'package:stroller_shop/entities/entities.dart';
import 'package:stroller_shop/repositories/assistant_repository.dart';
import 'package:stroller_shop/services/assistant/assistant_service.dart';

part 'assistant_repository_test_data.dart';

class _MockAssistantService extends Mock implements AssistantService {}

void main() {
  setUpAll(() {
    registerFallbackValue(const ChatRequestBodyObj(conversationId: '', message: '', cart: []));
    registerFallbackValue(Options());
  });

  late _MockAssistantService service;

  AssistantRepository createRepository() => AssistantRepository(service);

  setUp(() => service = _MockAssistantService());
  tearDown(() => reset(service));

  group('sendMessage', () {
    test('maps the response to a chat reply', () async {
      when(() => service.chat(any(), any())).thenAnswer((_) async => _response);

      final reply = await createRepository().sendMessage(
        conversationId: '',
        message: 'привет',
        cart: const [],
      );

      expect(reply.conversationId, 'c1');
      expect(reply.text, 'Вот варианты');
      expect(reply.strollers.single.id, 's1');
      expect(reply.strollers.single.priceByn, 1200);
      expect(reply.actions, [
        const AssistantAction.addToCart(strollerId: 's1', color: 'Black'),
        const AssistantAction.unknown(),
      ]);
      expect(reply.searches, [const AssistantSearch(summary: 'до 1500 BYN', found: 1)]);
      expect(reply.suggestions, ['Подробнее']);
    });

    test('sends the conversation, message and cart with a long receive timeout', () async {
      when(() => service.chat(any(), any())).thenAnswer((_) async => _response);

      await createRepository().sendMessage(
        conversationId: 'c1',
        message: 'привет',
        cart: [_cartItem],
      );

      final captured = verify(() => service.chat(captureAny(), captureAny())).captured;
      final body = captured.first as ChatRequestBodyObj;
      final options = captured.last as Options;
      expect(body.toJson(), {
        'conversation_id': 'c1',
        'message': 'привет',
        'cart': [
          {'stroller_id': 's1', 'color': 'Black', 'quantity': 2},
        ],
      });
      expect(options.receiveTimeout, const Duration(seconds: 90));
    });

    test('does not retry a timed out request', () async {
      when(() => service.chat(any(), any())).thenThrow(
        DioException(requestOptions: RequestOptions(), type: .receiveTimeout),
      );

      await expectLater(
        createRepository().sendMessage(conversationId: '', message: 'привет', cart: const []),
        throwsA(isA<NoConnectionException>()),
      );
      verify(() => service.chat(any(), any())).called(1);
    });

    test('maps 503 to unavailable', () async {
      when(() => service.chat(any(), any())).thenThrow(
        DioException(
          requestOptions: RequestOptions(),
          type: .badResponse,
          response: Response(requestOptions: RequestOptions(), statusCode: 503),
        ),
      );

      await expectLater(
        createRepository().sendMessage(conversationId: '', message: 'привет', cart: const []),
        throwsA(isA<UnavailableException>()),
      );
      verify(() => service.chat(any(), any())).called(1);
    });
  });
}
