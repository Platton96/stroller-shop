import 'package:flutter/widgets.dart';
import 'package:stroller_shop/core/navigation/pages.dart';

typedef PagesUpdateCallback = List<Page<Object?>> Function(List<Page<Object?>> oldPages);

abstract interface class AppNavigator implements Listenable {
  List<Page<Object?>> get currentPages;

  Future<T?> push<T>(PageWithPopResult<T?> page);

  void pop([Object? result]);

  void replace(Page<Object?> page);

  void replaceAll(List<Page<Object?>> pages);

  void onDidRemovePage(Page<Object?> page);

  bool onSystemPopCalled();
}
