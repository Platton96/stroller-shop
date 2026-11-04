import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stroller_shop/app/app.dart';
import 'package:stroller_shop/core/bloc/base_bloc.dart';
import 'package:stroller_shop/core/logging/logger.dart';
import 'package:stroller_shop/core/message_bus/message_bus.dart';
import 'package:stroller_shop/core/navigation/app_navigator.dart';
import 'package:stroller_shop/core/toast/toast_service.dart';
import 'package:stroller_shop/di/injection.dart';
import 'package:stroller_shop/di/service_locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Intl.defaultLocale = 'ru';

  final getIt = ServiceLocator.getIt;
  await configureDependencies(getIt);

  BaseBlocCallbacks.configure(
    appNavigator: getIt.get<AppNavigator>,
    messageBus: getIt.get<MessageBus>,
    toastService: getIt.get<ToastService>,
  );

  final toastService = getIt.get<ToastService>();

  runZonedGuarded(
    () => runApp(
      StrollerShopApp(
        navigator: getIt.get<AppNavigator>(),
        scaffoldMessengerKey: switch (toastService) {
          final SnackBarToastService service => service.messengerKey,
          _ => GlobalKey<ScaffoldMessengerState>(),
        },
      ),
    ),
    (error, stackTrace) => logger.e(error, stackTrace: stackTrace),
  );
}
