import 'package:flutter/material.dart';
import 'package:stroller_shop/core/navigation/app_navigator.dart';

class AppRootNavigator extends StatelessWidget {
  const AppRootNavigator({required this.navigator, super.key});

  final AppNavigator navigator;

  @override
  Widget build(BuildContext context) => ListenableBuilder(
    listenable: navigator,
    builder: (context, _) => NavigatorPopHandler(
      onPopWithResult: (_) => navigator.onSystemPopCalled(),
      child: Navigator(
        pages: navigator.currentPages,
        onDidRemovePage: navigator.onDidRemovePage,
      ),
    ),
  );
}
