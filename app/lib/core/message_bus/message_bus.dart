import 'dart:async';

import 'package:injectable/injectable.dart';

@lazySingleton
class MessageBus {
  final _controller = StreamController<Message>.broadcast();

  Stream<T> stream<T extends Message>() => _controller.stream.whereType<T>();

  void send<T extends Message>(T message) => _controller.add(message);

  @disposeMethod
  Future<void> dispose() => _controller.close();
}

abstract interface class Message {}

abstract class ValueMessage<T> implements Message {
  const ValueMessage(this.value);

  final T value;
}

extension<T> on Stream<T> {
  Stream<R> whereType<R>() => where((event) => event is R).cast<R>();
}
