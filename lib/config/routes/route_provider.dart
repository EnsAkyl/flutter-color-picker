import 'package:color_picker_app/config/config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final routesProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    routes: appRoutes,
    initialLocation: RouteLocation.home,
    navigatorKey: navigationKey,
  );
});
