import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';
import 'package:magic_rewards/config/di/injectable_config.dart';
import 'package:magic_rewards/features/auth/presentation/routes/login_route.dart';
import 'package:magic_rewards/features/rewards/presentation/blocs/transactions_bloc/transactions_bloc.dart';
import 'package:magic_rewards/features/rewards/presentation/pages/transactions_screen.dart';

class TransactionsRoute {
  static const String name = '/transactions';
  static GoRoute route = GoRoute(
    path: name,
    redirect: (context, state) {
      if (!CacheStorageServices().hasToken) return LoginRoute.name;
      return null;
    },
    builder: (context, state) => BlocProvider(
        create: (context) => getIt<TransactionsBloc>(),
        child: TransactionsScreen()),
  );
}
