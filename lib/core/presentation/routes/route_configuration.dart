import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:magic_rewards/core/presentation/bloc/app_config_bloc/app_config_bloc.dart';
import 'package:magic_rewards/core/presentation/pages/route_error_screen.dart';
import 'package:magic_rewards/core/presentation/routes/app_route_paths.dart';
import 'package:magic_rewards/core/presentation/routes/navigation_guards.dart';
import 'package:magic_rewards/core/presentation/routes/route_validation.dart';
import 'package:magic_rewards/core/presentation/routes/router_bloc_listenable.dart';
import 'package:magic_rewards/features/auth/presentation/pages/login_screen.dart';
import 'package:magic_rewards/features/auth/presentation/pages/register_screen.dart';
import 'package:magic_rewards/features/home/presentation/pages/main_screen.dart';
import 'package:magic_rewards/features/home/presentation/pages/splash_screen.dart';
import 'package:magic_rewards/features/live_offers/presentation/pages/live_offers_screen.dart';
import 'package:magic_rewards/features/profile/presentation/pages/contact_us_screen.dart';
import 'package:magic_rewards/features/profile/presentation/pages/profile_screen.dart';
import 'package:magic_rewards/features/profile/presentation/pages/terms_screen.dart';
import 'package:magic_rewards/features/rewards/presentation/pages/redeem_screen.dart';
import 'package:magic_rewards/features/rewards/presentation/pages/transactions_screen.dart';
import 'package:magic_rewards/features/tasks/presentation/pages/do_task_screen.dart';
import 'package:magic_rewards/features/tasks/presentation/pages/task_details_screen.dart';
import 'package:magic_rewards/features/tasks/presentation/pages/tasks_screen.dart';
import 'package:magic_rewards/features/top_users/presentation/pages/top_users_screen.dart';
import 'package:magic_rewards/shared/services/logger/logger_service.dart';
import 'package:magic_rewards/features/tasks/domain/entities/tasks_entity.dart';
import 'package:magic_rewards/features/tasks/domain/entities/reserve_comment_entity.dart';
import 'package:magic_rewards/config/di/injectable_config.dart';

// BLoC imports for providers
import 'package:magic_rewards/features/auth/presentation/blocs/login/login_bloc.dart';
import 'package:magic_rewards/features/auth/presentation/blocs/register/register_bloc.dart';
import 'package:magic_rewards/features/auth/presentation/blocs/check_email/check_email_bloc.dart';
import 'package:magic_rewards/features/profile/presentation/blocs/profile_bloc/profile_bloc.dart';
import 'package:magic_rewards/features/profile/presentation/blocs/delete_account_bloc/delete_account_bloc.dart';
import 'package:magic_rewards/features/rewards/presentation/blocs/redeem_bloc/redeem_bloc.dart';
import 'package:magic_rewards/features/rewards/presentation/blocs/orders_bloc/orders_bloc.dart';
import 'package:magic_rewards/features/rewards/presentation/blocs/payouts_bloc/payouts_bloc.dart';
import 'package:magic_rewards/features/rewards/presentation/blocs/transactions_bloc/transactions_bloc.dart';
import 'package:magic_rewards/features/tasks/presentation/blocs/tasks_bloc/tasks_bloc.dart';
import 'package:magic_rewards/features/tasks/presentation/blocs/tasks_orders_bloc/tasks_orders_bloc.dart';
import 'package:magic_rewards/features/tasks/presentation/blocs/do_task_bloc/do_task_bloc.dart';
import 'package:magic_rewards/features/tasks/presentation/blocs/comments_bloc/comments_bloc.dart';
import 'package:magic_rewards/features/live_offers/presentation/blocs/live_offers_bloc/live_offers_bloc.dart';
import 'package:magic_rewards/features/top_users/presentation/blocs/top_users_bloc/top_users_bloc.dart';

/// Centralized router configuration using BLoC for state management
/// 
/// This class provides a clean separation of concerns with:
/// - BLoC-based state management for reactive navigation
/// - Authentication guards handled through NavigationGuards
/// - Type-safe route parameters with validation
/// - Comprehensive error handling and logging
/// - Production-ready navigation patterns
class RouteConfiguration {
  const RouteConfiguration._();

  /// Creates the main GoRouter configuration with BLoC integration
  /// 
  /// This method sets up:
  /// - BLoC-based refresh listenable for reactive navigation
  /// - Navigation guards for authentication and route protection
  /// - Type-safe route definitions with proper error handling
  /// - Debug logging for development
  static GoRouter createRouter(BuildContext context) {
    LoggerService.app('🔧 Creating BLoC-based router configuration');

    try {
      final appConfigBloc = context.read<AppConfigBloc>();
      final routerListenable = RouterBlocListenable(appConfigBloc);

      final router = GoRouter(
        initialLocation: AppRoutePaths.splash,
        refreshListenable: routerListenable,
        redirect: (context, state) => NavigationGuards.handleRedirect(context, state),
        routes: _buildRoutes(),
        errorBuilder: (context, state) => RouteErrorScreen(
          error: state.error,
          routeLocation: state.uri.toString(),
        ),
        debugLogDiagnostics: true, // Enable in debug mode for development
      );

      LoggerService.app('✅ BLoC-based router configuration created successfully');
      return router;
    } catch (error, stackTrace) {
      LoggerService.error(
        'Failed to create router configuration:\n'
        'Error: $error\n'
        'This is a critical error that prevents navigation from working.',
        error,
        stackTrace,
      );
      rethrow;
    }
  }

  /// Builds all application routes with comprehensive parameter handling
  /// 
  /// Each route includes:
  /// - Type-safe parameter validation
  /// - Fallback screens for invalid parameters
  /// - Comprehensive error handling
  /// - Consistent naming conventions
  static List<RouteBase> _buildRoutes() {
    LoggerService.app('📝 Building application routes');

    return [
      // Auth Routes
      GoRoute(
      path: AppRoutePaths.splash,
      name: 'splash',
      builder: (context, state) {
        LoggerService.debug('🚀 Building SplashScreen');
        return SplashScreen();
      },
    ),

      GoRoute(
      path: AppRoutePaths.login,
      name: 'login',
      builder: (context, state) {
        LoggerService.debug('🔑 Building LoginScreen with LoginBloc');
        return BlocProvider(
          create: (context) => getIt<LoginBloc>(),
          child: const LogInScreen(),
        );
      },
    ),
      GoRoute(
      path: AppRoutePaths.register,
      name: 'register',
      builder: (context, state) {
        LoggerService.debug('📝 Building RegisterScreen with RegisterBloc and CheckEmailBloc');
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<RegisterBloc>(),
            ),
            BlocProvider(
              create: (context) => getIt<CheckEmailBloc>(),
            ),
          ],
          child: const RegisterScreen(),
        );
      },
    ),
      GoRoute(
      path: AppRoutePaths.main,
      name: 'main',
      builder: (context, state) {
        LoggerService.debug('🏠 Building MainScreen');
        return MainScreen();
      },
    ),
      // Profile Routes
      GoRoute(
        path: AppRoutePaths.profile,
        name: 'profile',
        builder: (context, state) {
          LoggerService.debug('👤 Building ProfileScreen with ProfileBloc and DeleteAccountBloc');
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<ProfileBloc>(),
              ),
              BlocProvider(
                create: (context) => getIt<DeleteAccountBloc>(),
              ),
            ],
            child: ProfileScreen(),
          );
        },
      ),

      GoRoute(
        path: AppRoutePaths.contactUs,
        name: 'contact-us',
        builder: (context, state) {
          LoggerService.debug('📞 Building ContactUsScreen');
          return ContactUsScreen();
        },
      ),

      GoRoute(
        path: AppRoutePaths.terms,
        name: 'terms',
        builder: (context, state) {
          LoggerService.debug('📋 Building TermsScreen');
          return TermsScreen();
        },
      ),

      // Rewards Routes
      GoRoute(
        path: AppRoutePaths.redeem,
        name: 'redeem',
        builder: (context, state) {
          LoggerService.debug('🎁 Building RedeemScreen with RedeemBloc, OrdersBloc, and PayoutsBloc');
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<RedeemBloc>(),
              ),
              BlocProvider(
                create: (context) => getIt<OrdersBloc>(),
              ),
              BlocProvider(
                create: (context) => getIt<PayoutsBloc>(),
              ),
            ],
            child: const RedeemScreen(),
          );
        },
      ),

      GoRoute(
        path: AppRoutePaths.transactions,
        name: 'transactions',
        builder: (context, state) {
          LoggerService.debug('💳 Building TransactionsScreen with TransactionsBloc');
          return BlocProvider(
            create: (context) => getIt<TransactionsBloc>(),
            child: TransactionsScreen(),
          );
        },
      ),

      // Tasks Routes
      GoRoute(
        path: AppRoutePaths.tasks,
        name: 'tasks',
        builder: (context, state) {
          LoggerService.debug('📋 Building TasksScreen with TasksBloc and TasksOrdersBloc');
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<TasksBloc>(),
              ),
              BlocProvider(
                create: (context) => getIt<TasksOrdersBloc>(),
              ),
            ],
            child: const TasksScreen(),
          );
        },
      ),

      GoRoute(
        path: AppRoutePaths.taskDetails,
        name: 'task-details',
        builder: (context, state) {
          LoggerService.debug('📋 Building TaskDetailsScreen');
          
          final task = RouteValidation.validateExtra<TaskEntity>(
            state.extra, 
            'task-details'
          );
          
          if (task != null) {
            LoggerService.debug('✅ Task parameter validated for TaskDetailsScreen');
            return BlocProvider(
              create: (context) => getIt<TasksBloc>(),
              child: TaskDetailsScreen(task: task),
            );
          } else {
            LoggerService.warning('⚠️ Invalid task parameter, redirecting to TasksScreen');
            return MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => getIt<TasksBloc>(),
                ),
                BlocProvider(
                  create: (context) => getIt<TasksOrdersBloc>(),
                ),
              ],
              child: const TasksScreen(),
            ); // Fallback to tasks list
          }
        },
      ),

      GoRoute(
        path: AppRoutePaths.doTask,
        name: 'do-task',
        builder: (context, state) {
          LoggerService.debug('🎯 Building DoTaskScreen');
          
          final extraMap = RouteValidation.validateMapExtra(
            state.extra,
            'do-task'
          );
          
          if (extraMap != null) {
            final comment = RouteValidation.validateMapParam<CommentEntity>(
              extraMap, 
              'comment', 
              'do-task'
            );
            final taskUrl = RouteValidation.validateMapParam<String>(
              extraMap, 
              'taskUrl', 
              'do-task'
            );
            
            if (comment != null && taskUrl != null) {
              LoggerService.debug('✅ All parameters validated for DoTaskScreen');
              return MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) => getIt<DoTaskBloc>(),
                  ),
                  BlocProvider(
                    create: (context) => getIt<CommentsBloc>(),
                  ),
                ],
                child: DoTaskScreen(comment: comment, taskUrl: taskUrl),
              );
            }
          }
          
          LoggerService.warning('⚠️ Invalid parameters for DoTaskScreen, redirecting to TasksScreen');
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<TasksBloc>(),
              ),
              BlocProvider(
                create: (context) => getIt<TasksOrdersBloc>(),
              ),
            ],
            child: const TasksScreen(),
          ); // Fallback to tasks list
        },
      ),

      // Live Offers Routes
      GoRoute(
        path: AppRoutePaths.liveOffers,
        name: 'live-offers',
        builder: (context, state) {
          LoggerService.debug('🎯 Building LiveOffersScreen with LiveOffersBloc');
          return BlocProvider(
            create: (context) => getIt<LiveOffersBloc>(),
            child: LiveOffersScreen(),
          );
        },
      ),

      // Top Users Routes
      GoRoute(
        path: AppRoutePaths.leaderboard,
        name: 'leaderboard',
        builder: (context, state) {
          LoggerService.debug('🏆 Building TopUsersScreen with TopUsersBloc');
          return BlocProvider(
            create: (context) => getIt<TopUsersBloc>(),
            child: TopUsersScreen(),
          );
        },
      ),
    ];
  }
}

/// Type-safe navigation extensions for BuildContext
/// 
/// These extensions provide compile-time safe navigation methods
/// with proper parameter validation and error handling
extension BlocNavigationExtensions on BuildContext {
  // Auth Navigation
  void goToSplash() {
    LoggerService.debug('🚀 Navigating to splash');
    go(AppRoutePaths.splash);
  }

  void goToLogin() {
    LoggerService.debug('🔑 Navigating to login');
    go(AppRoutePaths.login);
  }

  void goToRegister() {
    LoggerService.debug('📝 Navigating to register');
    go(AppRoutePaths.register);
  }

  // Main App Navigation
  void goToMain() {
    LoggerService.debug('🏠 Navigating to main');
    go(AppRoutePaths.main);
  }

  // Profile Navigation
  void goToProfile() {
    LoggerService.debug('👤 Navigating to profile');
    go(AppRoutePaths.profile);
  }

  void goToContactUs() {
    LoggerService.debug('📞 Navigating to contact us');
    push(AppRoutePaths.contactUs);
  }

  void goToTerms() {
    LoggerService.debug('📋 Navigating to terms');
    push(AppRoutePaths.terms);
  }

  // Rewards Navigation
  void goToRedeem() {
    LoggerService.debug('🎁 Navigating to redeem');
    go(AppRoutePaths.redeem);
  }

  void goToTransactions() {
    LoggerService.debug('💳 Navigating to transactions');
    push(AppRoutePaths.transactions);
  }

  // Tasks Navigation
  void goToTasks() {
    LoggerService.debug('📋 Navigating to tasks');
    go(AppRoutePaths.tasks);
  }

  void goToTaskDetails({required TaskEntity task}) {
    LoggerService.debug('📋 Navigating to task details: ${task.toString()}');
    push(AppRoutePaths.taskDetails, extra: task);
  }

  void goToDoTask({required CommentEntity comment, required String taskUrl}) {
    LoggerService.debug('🎯 Navigating to do task: $taskUrl');
    push(AppRoutePaths.doTask, extra: {
      'comment': comment,
      'taskUrl': taskUrl,
    });
  }

  // Live Offers Navigation
  void goToLiveOffers() {
    LoggerService.debug('🎯 Navigating to live offers');
    go(AppRoutePaths.liveOffers);
  }

  // Top Users Navigation
  void goToLeaderboard() {
    LoggerService.debug('🏆 Navigating to leaderboard');
    go(AppRoutePaths.leaderboard);
  }

  // Utility Navigation Methods
  void goBack() {
    LoggerService.debug('⬅️ Navigating back');
    if (canPop()) {
      pop();
    } else {
      // If can't pop, go to main screen
      goToMain();
    }
  }

  void goBackWithResult<T>(T result) {
    LoggerService.debug('⬅️ Navigating back with result: $result');
    if (canPop()) {
      pop(result);
    } else {
      // If can't pop, go to main screen
      goToMain();
    }
  }
}
