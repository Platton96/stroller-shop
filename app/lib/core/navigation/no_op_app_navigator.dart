import 'package:flutter/widgets.dart';
import 'package:stroller_shop/core/navigation/app_navigator.dart';
import 'package:stroller_shop/core/navigation/pages.dart';

class NoOpAppNavigator implements AppNavigator {
  const NoOpAppNavigator();

  @override
  List<Page<Object?>> get currentPages => const [];

  @override
  Future<T?> push<T>(PageWithPopResult<T?> page) async => null;

  @override
  void pop([Object? result]) {}

  @override
  void replace(Page<Object?> page) {}

  @override
  void replaceAll(List<Page<Object?>> pages) {}

  @override
  void onDidRemovePage(Page<Object?> page) {}

  @override
  bool onSystemPopCalled() => false;

  @override
  void addListener(VoidCallback listener) {}

  @override
  void removeListener(VoidCallback listener) {}
}
