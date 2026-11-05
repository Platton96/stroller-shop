import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stroller_shop/core/navigation/app_navigator.dart';

class GoRouterAppNavigator implements AppNavigator {
  final GoRouter _router;

  const GoRouterAppNavigator(this._router);

  @override
  Future<T?> push<T extends Object?>(String location) => _router.push<T>(location);

  @override
  Future<T?> showSheet<T>(WidgetBuilder builder) async {
    if (_router.routerDelegate.navigatorKey.currentContext case final context?) {
      return showModalBottomSheet<T>(
        context: context,
        builder: builder,
        isScrollControlled: true,
        useSafeArea: true,
        showDragHandle: true,
      );
    }

    return null;
  }

  @override
  void pop<T extends Object?>([T? result]) {
    if (_router.canPop()) {
      _router.pop(result);
    }
  }
}
