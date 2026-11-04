import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class PageWithPopResult<T> extends Page<T> {
  PageWithPopResult({super.key, super.name});

  final _resultCompleter = Completer<T?>();

  Future<T?> get result => _resultCompleter.future;

  @override
  PopInvokedWithResultCallback<T> get onPopInvoked => _handlePop;

  void complete(T? result) {
    if (!_resultCompleter.isCompleted) {
      _resultCompleter.complete(result);
    }
  }

  void _handlePop(bool didPop, T? result) {
    if (didPop) {
      complete(result);
    }
  }
}

abstract class AdaptivePage<T> extends PageWithPopResult<T> {
  AdaptivePage(this.builder, {super.key, super.name, this.isFullscreenDialog = false});

  final WidgetBuilder builder;
  final bool isFullscreenDialog;

  @override
  Route<T> createRoute(BuildContext context) => defaultTargetPlatform == .iOS
      ? CupertinoPageRoute<T>(
          settings: this,
          builder: builder,
          fullscreenDialog: isFullscreenDialog,
        )
      : MaterialPageRoute<T>(
          settings: this,
          builder: builder,
          fullscreenDialog: isFullscreenDialog,
        );
}

abstract class ModalBottomSheetPage<T> extends PageWithPopResult<T> {
  ModalBottomSheetPage(this.builder, {super.key, super.name, this.isDismissible = true});

  final WidgetBuilder builder;
  final bool isDismissible;

  @override
  Route<T> createRoute(BuildContext context) => ModalBottomSheetRoute<T>(
    settings: this,
    builder: builder,
    isScrollControlled: true,
    isDismissible: isDismissible,
    useSafeArea: true,
    showDragHandle: true,
  );
}
