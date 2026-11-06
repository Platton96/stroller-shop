import 'package:flutter/widgets.dart';

abstract interface class AppNavigator {
  Future<T?> push<T extends Object?>(String location);

  Future<T?> showSheet<T>(WidgetBuilder builder);

  void pop<T extends Object?>([T? result]);
}
