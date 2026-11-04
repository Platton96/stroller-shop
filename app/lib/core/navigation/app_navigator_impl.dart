import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:stroller_shop/core/navigation/app_navigator.dart';
import 'package:stroller_shop/core/navigation/pages.dart';

class AppNavigatorImpl extends ChangeNotifier implements AppNavigator {
  AppNavigatorImpl({required List<Page<Object?>> initialPages}) : _pages = initialPages;

  List<Page<Object?>> _pages;

  @override
  List<Page<Object?>> get currentPages => List.unmodifiable(_pages);

  @override
  Future<T?> push<T>(PageWithPopResult<T?> page) {
    _change((pages) => [...pages, page]);

    return page.result;
  }

  @override
  void pop([Object? result]) {
    if (_pages.length <= 1) {
      return;
    }
    final top = _pages.lastOrNull;
    if (top is PageWithPopResult) {
      top.complete(result);
    }
    _change((pages) => pages.sublist(0, pages.length - 1));
  }

  @override
  void replace(Page<Object?> page) => _change((pages) => [...pages.take(pages.length - 1), page]);

  @override
  void replaceAll(List<Page<Object?>> pages) => _change((_) => pages);

  @override
  void onDidRemovePage(Page<Object?> page) {
    if (_pages.contains(page)) {
      _change((pages) => pages.whereNot((element) => element == page).toList());
    }
  }

  @override
  bool onSystemPopCalled() {
    if (_pages.length <= 1) {
      return false;
    }
    pop();

    return true;
  }

  void _change(PagesUpdateCallback update) {
    _pages = update(_pages);
    notifyListeners();
  }
}
