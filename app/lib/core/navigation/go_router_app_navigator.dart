import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:stroller_shop/core/navigation/app_bottom_sheet.dart';
import 'package:stroller_shop/core/navigation/app_navigator.dart';

class GoRouterAppNavigator implements AppNavigator {
  final GoRouter _router;

  const GoRouterAppNavigator(this._router);

  @override
  Future<T?> push<T extends Object?>(String location) => _router.push<T>(location);

  @override
  Future<T?> showSheet<T>(WidgetBuilder builder) async {
    if (_router.routerDelegate.navigatorKey.currentContext case final context?) {
      return showAppBottomSheet<T>(context, builder);
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
