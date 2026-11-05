import 'package:flutter/widgets.dart';
import 'package:stroller_shop/core/navigation/app_navigator.dart';

class NoOpAppNavigator implements AppNavigator {
  const NoOpAppNavigator();

  @override
  Future<T?> push<T extends Object?>(String location) async => null;

  @override
  Future<T?> showSheet<T>(WidgetBuilder builder) async => null;

  @override
  void pop<T extends Object?>([T? result]) {}
}
