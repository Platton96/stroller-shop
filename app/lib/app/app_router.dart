import 'package:go_router/go_router.dart';
import 'package:stroller_shop/core/navigation/app_routes.dart';
import 'package:stroller_shop/features/stroller_details/stroller_details_screen.dart';
import 'package:stroller_shop/features/tabs/tabs_screen.dart';

GoRouter createAppRouter() => GoRouter(
  routes: [
    GoRoute(
      path: AppRoutes.tabs,
      builder: (_, _) => const TabsScreen(),
      routes: [
        GoRoute(
          path: AppRoutes.strollerDetailsPath,
          builder: (_, state) => StrollerDetailsScreen(
            strollerId: state.pathParameters[AppRoutes.strollerIdParameter] ?? '',
          ),
        ),
      ],
    ),
  ],
);
