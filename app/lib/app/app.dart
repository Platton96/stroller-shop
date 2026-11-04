import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:stroller_shop/core/navigation/app_navigator.dart';
import 'package:stroller_shop/core/navigation/app_root_navigator.dart';
import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';

class StrollerShopApp extends StatelessWidget {
  const StrollerShopApp({
    required this.navigator,
    required this.scaffoldMessengerKey,
    super.key,
  });

  final AppNavigator navigator;
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey;

  @override
  Widget build(BuildContext context) => MaterialApp(
    onGenerateTitle: (context) => S.of(context).appTitle,
    debugShowCheckedModeBanner: false,
    theme: AppTheme.light(),
    locale: const Locale('ru'),
    supportedLocales: S.supportedLocales,
    localizationsDelegates: const [
      S.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    scaffoldMessengerKey: scaffoldMessengerKey,
    home: AppRootNavigator(navigator: navigator),
  );
}
