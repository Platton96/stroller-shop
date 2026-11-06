import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:stroller_shop/app/app_router.dart';
import 'package:stroller_shop/core/navigation/app_navigator.dart';
import 'package:stroller_shop/core/navigation/go_router_app_navigator.dart';

@module
abstract class NavigationModule {
  @lazySingleton
  GoRouter router() => createAppRouter();

  @lazySingleton
  AppNavigator appNavigator(GoRouter router) => GoRouterAppNavigator(router);
}
