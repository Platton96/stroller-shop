import 'dart:async';

import 'package:injectable/injectable.dart';

abstract class Mediator<T> {
  final _controller = StreamController<T>.broadcast();

  Stream<T> get stream => _controller.stream;

  void notify(T value) => _controller.add(value);

  @disposeMethod
  Future<void> close() => _controller.close();
}
