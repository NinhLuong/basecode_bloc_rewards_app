import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:magic_rewards/config/di/injectable_config.dart';
import 'package:magic_rewards/features/auth/presentation/blocs/check_email/check_email_bloc.dart';
import 'package:magic_rewards/features/auth/presentation/blocs/register/register_bloc.dart';

import '../pages/register_screen.dart';

class RegisterRoute {
  static const String name = '/register';

  static GoRoute route = GoRoute(
    path: name,
    builder: (context, state) => MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => getIt<RegisterBloc>(),
      ),
      BlocProvider(
        create: (context) => getIt<CheckEmailBloc>(),
      ),
    ], child: const RegisterScreen()),
  );
}
