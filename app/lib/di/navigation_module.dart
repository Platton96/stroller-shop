import 'package:injectable/injectable.dart';
import 'package:stroller_shop/core/navigation/app_navigator.dart';
import 'package:stroller_shop/core/navigation/app_navigator_impl.dart';
import 'package:stroller_shop/features/tabs/tabs_pages.dart';

@module
abstract class NavigationModule {
  @lazySingleton
  AppNavigator appNavigator() => AppNavigatorImpl(initialPages: [TabsPage()]);
}
