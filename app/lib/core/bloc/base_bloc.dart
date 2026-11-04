import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stroller_shop/core/bloc/bloc_transformers.dart';
import 'package:stroller_shop/core/exceptions/domain_ignore_from_crash_reporting.dart';
import 'package:stroller_shop/core/logging/logger.dart';
import 'package:stroller_shop/core/message_bus/message_bus.dart';
import 'package:stroller_shop/core/navigation/app_navigator.dart';
import 'package:stroller_shop/core/navigation/no_op_app_navigator.dart';
import 'package:stroller_shop/core/toast/toast_service.dart';

export 'dart:async';

export 'package:bloc_concurrency/bloc_concurrency.dart';
export 'package:collection/collection.dart';
export 'package:flutter_bloc/flutter_bloc.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:injectable/injectable.dart' hide Environment, test;
export 'package:stroller_shop/core/bloc/bloc_error_state_interface.dart';
export 'package:stroller_shop/objects/objects.dart';

typedef AppNavigatorGetter = AppNavigator Function();
typedef MessageBusGetter = MessageBus Function();
typedef ToastServiceGetter = ToastService Function();

mixin BaseBlocCallbacks {
  static late AppNavigatorGetter _acquireAppNavigator;
  static late MessageBusGetter _acquireMessageBus;
  static late ToastServiceGetter _acquireToastService;

  late final MessageBus messageBus = _acquireMessageBus();
  late AppNavigator appNavigator = _acquireAppNavigator();
  late ToastService toastService = _acquireToastService();

  static void configure({
    required AppNavigatorGetter appNavigator,
    required MessageBusGetter messageBus,
    required ToastServiceGetter toastService,
  }) {
    _acquireAppNavigator = appNavigator;
    _acquireMessageBus = messageBus;
    _acquireToastService = toastService;
  }
}

abstract class BaseBloc<Event, State> extends Bloc<Event, State>
    with BaseBlocCallbacks, BlocTransformers {
  BaseBloc(super.initialState);

  static bool isTestEnvironment = false;

  final _subscriptions = <StreamSubscription<Object?>>[];
  bool _isClosed = false;

  @override
  void add(Event event) {
    if (_isClosed) {
      return;
    }
    super.add(event);
  }

  @override
  void on<E extends Event>(EventHandler<E, State> handler, {EventTransformer<E>? transformer}) =>
      super.on<E>((event, emit) => _guardedHandler(handler, event, emit), transformer: transformer);

  @override
  Future<void> close() {
    for (final subscription in _subscriptions) {
      unawaited(subscription.cancel());
    }
    appNavigator = const NoOpAppNavigator();
    toastService = const NoOpToastService();
    _isClosed = true;

    return super.close();
  }

  void handleGeneralException(Event event, Emitter<State> emit, Exception exception) {}

  void logError(Object error, [StackTrace? stackTrace]) {
    if (isTestEnvironment || error is DomainIgnoreFromCrashReporting) {
      return;
    }
    logger.e(error, stackTrace: stackTrace);
  }

  void addDisposable(StreamSubscription<Object?> subscription) => _subscriptions.add(subscription);

  void addDisposables(List<StreamSubscription<Object?>> subscriptions) =>
      _subscriptions.addAll(subscriptions);

  Future<void> _guardedHandler<E extends Event>(
    EventHandler<E, State> handler,
    E event,
    Emitter<State> emit,
  ) async {
    try {
      await handler(event, emit);
      // ignore: avoid_catching_errors
    } on ParallelWaitError<Object?, Object?> catch (error, stackTrace) {
      final exception = _firstException(error);
      handleGeneralException(event, emit, exception);
      logError(exception, stackTrace);
    } on Exception catch (exception, stackTrace) {
      handleGeneralException(event, emit, exception);
      logError(exception, stackTrace);
    } on Object catch (error, stackTrace) {
      final exception = Exception(error);
      handleGeneralException(event, emit, exception);
      logError(exception, stackTrace);
    }
  }

  Exception _firstException(ParallelWaitError<Object?, Object?> error) =>
      switch (error.errors) {
        final List<AsyncError?> errors =>
          errors.nonNulls.map((asyncError) => asyncError.error).whereType<Exception>().firstOrNull,
        _ => null,
      } ??
      Exception(error.toString());
}
