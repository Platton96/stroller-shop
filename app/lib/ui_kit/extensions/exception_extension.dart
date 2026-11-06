import 'package:stroller_shop/core/exceptions/app_exception.dart';
import 'package:stroller_shop/l10n/generated/s.dart';

extension ExceptionExtension on Exception {
  String localizedMessage(S strings) => switch (this) {
    NoConnectionException() => strings.errorNoConnection,
    NotFoundException() => strings.errorNotFound,
    UnavailableException() => strings.errorUnavailable,
    ServerException(:final statusCode) => strings.errorServer(statusCode),
    _ => strings.errorUnexpected,
  };
}
