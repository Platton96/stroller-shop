import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:stroller_shop/objects/objects.dart';
import 'package:stroller_shop/repositories/base_repository.dart';
import 'package:stroller_shop/services/assistant/assistant_service.dart';

@lazySingleton
class AssistantRepository extends BaseRepository {
  static const _receiveTimeout = Duration(seconds: 90);

  final AssistantService _service;

  AssistantRepository(this._service);

  Future<ChatReply> sendMessage({
    required String conversationId,
    required String message,
    required List<CartItem> cart,
  }) => guardApiCall(
    () => _service.chat(
      ChatRequestBodyObj(
        conversationId: conversationId,
        message: message,
        cart: cart.map(_toCartLineObj).toList(),
      ),
      Options(receiveTimeout: _receiveTimeout),
    ),
    isRetryable: false,
  );

  ChatCartLineObj _toCartLineObj(CartItem item) =>
      ChatCartLineObj(strollerId: item.stroller.id, color: item.color, quantity: item.quantity);
}
