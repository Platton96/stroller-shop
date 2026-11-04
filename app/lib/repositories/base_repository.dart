import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:stroller_shop/core/exceptions/app_exception.dart';
import 'package:stroller_shop/objects/objects.dart';

abstract class BaseRepository {
  static const _maxRetries = 2;
  static const _statusCodesToRetry = {
    HttpStatus.requestTimeout,
    HttpStatus.badGateway,
    HttpStatus.serviceUnavailable,
    HttpStatus.gatewayTimeout,
  };

  @protected
  Future<T> guardApiCall<T>(
    Future<Transformable<T>> Function() call, {
    bool isRetryable = true,
  }) async => (await _withRetry(call, isRetryable: isRetryable)).transform();

  @protected
  Future<T> guardApiCallWithMap<T, R>(
    Future<R> Function() call, {
    required T Function(R) map,
    bool isRetryable = true,
  }) async => map(await _withRetry(call, isRetryable: isRetryable));

  @protected
  Future<void> guardApiCallVoid(Future<void> Function() call, {bool isRetryable = true}) =>
      _withRetry(call, isRetryable: isRetryable);

  Future<R> _withRetry<R>(Future<R> Function() call, {required bool isRetryable}) async {
    for (var attempt = 0; ; attempt++) {
      try {
        return await call();
      } on DioException catch (exception) {
        final shouldRetry = isRetryable && _isRetryable(exception) && attempt < _maxRetries;
        if (!shouldRetry) {
          throw _toAppException(exception);
        }
        await Future<void>.delayed(Duration(milliseconds: 300 * (attempt + 1)));
      }
    }
  }

  bool _isRetryable(DioException exception) => switch (exception.type) {
    .connectionTimeout || .receiveTimeout || .sendTimeout || .connectionError => true,
    .badResponse => _statusCodesToRetry.contains(exception.response?.statusCode),
    _ => false,
  };

  AppException _toAppException(DioException exception) => switch (exception) {
    DioException(type: .connectionTimeout || .receiveTimeout || .sendTimeout || .connectionError) =>
      const .noConnection(),
    DioException(response: Response(statusCode: HttpStatus.notFound)) => const .notFound(),
    DioException(response: Response(statusCode: HttpStatus.serviceUnavailable)) =>
      const .unavailable(),
    DioException(response: Response(:final int statusCode, :final data)) => .server(
      statusCode: statusCode,
      message: switch (data) {
        {'error': final String message} => message,
        _ => '',
      },
    ),
    _ => .unexpected(exception.message ?? exception.type.name),
  };
}
