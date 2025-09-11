import 'package:go_router/go_router.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';
import 'package:magic_rewards/features/auth/presentation/routes/login_route.dart';
import 'package:magic_rewards/features/tasks/presentation/pages/tasks_screen.dart';

class TasksRoute {
  static const String name = '/tasks';
  static GoRoute route = GoRoute(
    path: name,
    redirect: (context, state) {
      if (!CacheStorageServices().hasToken) return LoginRoute.name;
      return null;
    },
    builder: (context, state) => const TasksScreen(),
  );
}
