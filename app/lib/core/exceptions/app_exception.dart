import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stroller_shop/core/exceptions/domain_ignore_from_crash_reporting.dart';

part 'app_exception.freezed.dart';

@freezed
sealed class AppException with _$AppException implements Exception {
  @Implements<DomainIgnoreFromCrashReporting>()
  const factory AppException.noConnection() = NoConnectionException;

  const factory AppException.server({required int statusCode, required String message}) =
      ServerException;

  @Implements<DomainIgnoreFromCrashReporting>()
  const factory AppException.notFound() = NotFoundException;

  const factory AppException.unexpected(String message) = UnexpectedException;
}
