import 'package:go_router/go_router.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';
import 'package:magic_rewards/features/auth/presentation/routes/login_route.dart';

import '../pages/home_screen.dart';

class HomeRoute {
  static const String name = '/home';
  static GoRoute route = GoRoute(
    path: name,
    redirect: (context, state) {
      if (!CacheStorageServices().hasToken) return LoginRoute.name;
      return null;
    },
    builder: (context, state) => HomeScreen(),
  );
}
