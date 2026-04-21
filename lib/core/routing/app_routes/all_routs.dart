import 'package:fitness_app/core/routing/app_routes/auth_routes.dart';
import 'package:fitness_app/core/routing/app_routes/onboarding_route.dart';
import 'package:fitness_app/core/routing/app_routes/main_shell_route.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static List<RouteBase> routes = [
    OnboardingRoute.onboarding,
    MainShellRoute.mainShellRoute,
    ...AuthRoutes.routes,
  ];
}
