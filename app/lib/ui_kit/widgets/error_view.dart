import 'package:flutter/material.dart';
import 'package:stroller_shop/core/exceptions/app_exception.dart';
import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';
import 'package:stroller_shop/ui_kit/widgets/app_button.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({required this.exception, required this.onRetry, super.key});

  final Exception exception;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final strings = S.of(context);

    return Center(
      child: Padding(
        padding: const .all(32),
        child: Column(
          mainAxisSize: .min,
          spacing: 12,
          children: [
            Icon(Icons.cloud_off_rounded, size: 48, color: context.colors.placeholderIcon),
            Text(strings.commonErrorTitle, style: context.textStyles.title),
            Text(
              exception.localizedMessage(strings),
              style: context.textStyles.caption,
              textAlign: .center,
            ),
            AppButton.secondary(label: strings.commonRetry, onPressed: onRetry),
          ],
        ),
      ),
    );
  }
}

extension ExceptionMessage on Exception {
  String localizedMessage(S strings) => switch (this) {
    NoConnectionException() => strings.errorNoConnection,
    NotFoundException() => strings.errorNotFound,
    ServerException(:final statusCode) => strings.errorServer(statusCode),
    _ => strings.errorUnexpected,
  };
}
