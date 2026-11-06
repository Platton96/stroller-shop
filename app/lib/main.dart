import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:stroller_shop/app/app.dart';
import 'package:stroller_shop/core/bloc/base_bloc.dart';
import 'package:stroller_shop/core/logging/logger.dart';
import 'package:stroller_shop/core/navigation/app_navigator.dart';
import 'package:stroller_shop/core/toast/toast_service.dart';
import 'package:stroller_shop/di/injection.dart';
import 'package:stroller_shop/di/service_locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Intl.defaultLocale = 'ru';
  GoogleFonts.config.allowRuntimeFetching = false;

  final getIt = ServiceLocator.getIt;
  await configureDependencies(getIt);

  BaseBlocCallbacks.configure(
    appNavigator: getIt.get<AppNavigator>,
    toastService: getIt.get<ToastService>,
  );

  final toastService = getIt.get<ToastService>();

  runZonedGuarded(
    () => runApp(
      StrollerShopApp(
        router: getIt.get<GoRouter>(),
        scaffoldMessengerKey: switch (toastService) {
          final SnackBarToastService service => service.messengerKey,
          _ => GlobalKey<ScaffoldMessengerState>(),
        },
      ),
    ),
    (error, stackTrace) => logger.e(error, stackTrace: stackTrace),
  );
}
