import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

abstract interface class ToastService {
  void showSuccess(String message);

  void showError(String message);

  void showInfo(String message);
}

@LazySingleton(as: ToastService)
class SnackBarToastService implements ToastService {
  final messengerKey = GlobalKey<ScaffoldMessengerState>();

  @override
  void showSuccess(String message) => _show(message, isError: false);

  @override
  void showError(String message) => _show(message, isError: true);

  @override
  void showInfo(String message) => _show(message, isError: false);

  void _show(String message, {required bool isError}) {
    final messenger = messengerKey.currentState;
    if (messenger == null) {
      return;
    }
    final colors = Theme.of(messenger.context).colorScheme;
    messenger
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
          behavior: .floating,
          backgroundColor: isError ? colors.error : colors.inverseSurface,
        ),
      );
  }
}

class NoOpToastService implements ToastService {
  const NoOpToastService();

  @override
  void showSuccess(String message) {}

  @override
  void showError(String message) {}

  @override
  void showInfo(String message) {}
}
