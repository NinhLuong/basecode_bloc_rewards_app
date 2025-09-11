import 'package:go_router/go_router.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';
import 'package:magic_rewards/features/auth/presentation/routes/login_route.dart';
import 'package:magic_rewards/features/top_users/presentation/pages/top_users_screen.dart';

class TopUsersRoute {
  static const String name = '/leaderboard';
  static GoRoute route = GoRoute(
    path: name,
    redirect: (context, state) {
      if (!CacheStorageServices().hasToken) return LoginRoute.name;
      return null;
    },
    builder: (context, state) => const TopUsersScreen(),
  );
}
