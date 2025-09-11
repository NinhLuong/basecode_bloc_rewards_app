import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:magic_rewards/config/di/injectable_config.dart';
import 'package:magic_rewards/features/auth/presentation/blocs/login/login_bloc.dart';
import 'package:magic_rewards/features/auth/presentation/pages/login_screen.dart';

class LoginRoute {
  static const String name = '/login';

  static GoRoute route = GoRoute(
    path: name,
    builder: (context, state) => BlocProvider(
        create: (context) => getIt<LoginBloc>(), child: const LogInScreen()),
  );
}
