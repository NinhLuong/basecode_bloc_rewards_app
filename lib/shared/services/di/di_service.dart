import 'package:get_it/get_it.dart';
import 'package:magic_rewards/features/auth/data/data_source/auth_data_source.dart';
import 'package:magic_rewards/features/auth/data/data_source/auth_remote_data_source_imp.dart';
import 'package:magic_rewards/features/auth/data/repository/auth_repository_imp.dart';
import 'package:magic_rewards/features/auth/domain/repository/auth_repository.dart';
import 'package:magic_rewards/features/auth/domain/usecases/login_usecase.dart';
import 'package:magic_rewards/features/auth/domain/usecases/check_email_usecase.dart';
import 'package:magic_rewards/features/auth/domain/usecases/register_usecase.dart';
import 'package:magic_rewards/features/auth/presentation/blocs/check_email/check_email_bloc.dart';
import 'package:magic_rewards/features/auth/presentation/blocs/login/login_bloc.dart';
import 'package:magic_rewards/features/auth/presentation/blocs/register/register_bloc.dart';
import 'package:magic_rewards/features/home/data/data_source/home_data_source.dart';
import 'package:magic_rewards/features/home/data/data_source/home_data_source_imp.dart';
import 'package:magic_rewards/features/home/data/repository/home_repository_imp.dart';
import 'package:magic_rewards/features/home/domain/repository/home_repository.dart';
import 'package:magic_rewards/features/home/domain/usecases/get_home_usecase.dart';
import 'package:magic_rewards/core/presentation/bloc/app_config_bloc/app_config_bloc.dart';
import 'package:magic_rewards/features/home/presentation/blocs/home_bloc/home_bloc.dart';
import 'package:magic_rewards/features/live_offers/data/data_source/live_offers_data_source.dart';
import 'package:magic_rewards/features/live_offers/data/data_source/live_offers_data_source_imp.dart';
import 'package:magic_rewards/features/live_offers/data/repository/live_offers_repository_imp.dart';
import 'package:magic_rewards/features/live_offers/domain/repository/live_offers_repository.dart';
import 'package:magic_rewards/features/live_offers/domain/usecases/get_live_offers_usecase.dart';
import 'package:magic_rewards/features/live_offers/presentation/blocs/live_offers_bloc/live_offers_bloc.dart';
import 'package:magic_rewards/features/profile/data/data_source/profile_data_source.dart';
import 'package:magic_rewards/features/profile/data/data_source/profile_data_source_imp.dart';
import 'package:magic_rewards/features/profile/data/repository/profile_repository_imp.dart';
import 'package:magic_rewards/features/profile/domain/repository/profile_repository.dart';
import 'package:magic_rewards/features/profile/domain/usecases/get_profile_usecase.dart';
import 'package:magic_rewards/features/profile/domain/usecases/delete_account_usecase.dart';
import 'package:magic_rewards/features/profile/presentation/blocs/delete_account_bloc/delete_account_bloc.dart';
import 'package:magic_rewards/features/profile/presentation/blocs/profile_bloc/profile_bloc.dart';
import 'package:magic_rewards/features/rewards/data/data_source/rewards_data_source.dart';
import 'package:magic_rewards/features/rewards/data/data_source/rewards_data_source_imp.dart';
import 'package:magic_rewards/features/rewards/data/repository/rewards_repository_imp.dart';
import 'package:magic_rewards/features/rewards/domain/repository/rewards_repository.dart';
import 'package:magic_rewards/features/rewards/domain/usecases/get_payouts_usecase.dart';
import 'package:magic_rewards/features/rewards/domain/usecases/get_transactions_usecase.dart';
import 'package:magic_rewards/features/rewards/domain/usecases/get_orders_usecase.dart';
import 'package:magic_rewards/features/rewards/domain/usecases/redeem_usecase.dart';
import 'package:magic_rewards/features/rewards/presentation/blocs/orders_bloc/orders_bloc.dart';
import 'package:magic_rewards/features/rewards/presentation/blocs/payouts_bloc/payouts_bloc.dart';
import 'package:magic_rewards/features/rewards/presentation/blocs/redeem_bloc/redeem_bloc.dart';
import 'package:magic_rewards/features/rewards/presentation/blocs/transactions_bloc/transactions_bloc.dart';
import 'package:magic_rewards/features/tasks/data/data_source/tasks_data_source.dart';
import 'package:magic_rewards/features/tasks/data/data_source/tasks_data_source_imp.dart';
import 'package:magic_rewards/features/tasks/data/repository/tasks_repository_imp.dart';
import 'package:magic_rewards/features/tasks/domain/repository/tasks_repository.dart';
import 'package:magic_rewards/features/tasks/domain/usecases/get_tasks_usecase.dart';
import 'package:magic_rewards/features/tasks/domain/usecases/get_tasks_orders_usecase.dart';
import 'package:magic_rewards/features/tasks/domain/usecases/add_task_order_usecase.dart';
import 'package:magic_rewards/features/tasks/domain/usecases/reserve_comment_usecase.dart';
import 'package:magic_rewards/features/tasks/presentation/blocs/comments_bloc/comments_bloc.dart';
import 'package:magic_rewards/features/tasks/presentation/blocs/do_task_bloc/do_task_bloc.dart';
import 'package:magic_rewards/features/tasks/presentation/blocs/tasks_bloc/tasks_bloc.dart';
import 'package:magic_rewards/features/tasks/presentation/blocs/tasks_orders_bloc/tasks_orders_bloc.dart';
import 'package:magic_rewards/features/top_users/data/data_source/top_users_data_source.dart';
import 'package:magic_rewards/features/top_users/data/data_source/top_users_data_source_imp.dart';
import 'package:magic_rewards/features/top_users/data/repository/top_users_repository_imp.dart';
import 'package:magic_rewards/features/top_users/domain/repository/top_users_repository.dart';
import 'package:magic_rewards/features/top_users/domain/usecases/get_top_users_usecase.dart';
import 'package:magic_rewards/features/top_users/presentation/blocs/top_users_bloc/top_users_bloc.dart';
import 'package:magic_rewards/core/data/datasources/remote/api/api_services.dart';

final getIt = GetIt.instance;

/// This class [DIServices] is define to inject values and variables (Objects) into memory when the application is opened,
/// those values will remain stored and preserved for direct access in randomaccess memory according to the specified conditions
/// and situations.
///
/// The concept of injection depends on dependency injection, using the get_it library to provide this type of service,
///
/// it is necessary You have to call [DIServices.init] in main.dart, main finction, before [runApp]
///
/// 1- to inject Your Bloc object use [registerFactory] function
///    Ex:   getIt.registerFactory(() => YourBloc(getIt()));
/// 2- to inject Your Repository, Data Source object use [registerLazySingleton] function
///    Ex:   getIt.registerLazySingleton(() => YourDataSource());
///    Ex:   getIt.registerLazySingleton(() => YourDataSource());
///
/// you can get any Object you inject by call [getIt]
///    Ex: getIt<YourBloc>();

// TODO: add (BLOCs , REPOSITORIES , DATA SOURCES)
class DIServices {
  static DIServices? _instance;

  DIServices._();

  factory DIServices() => _instance ??= DIServices._();

  void init() {
    // CORE SERVICES
    getIt.registerLazySingleton<ApiServices>(() => ApiServices());

    // REPOSITORIES
    getIt.registerLazySingleton<AuthRepository>(() => AuthRepositoryImp(getIt()));
    getIt.registerLazySingleton<HomeRepository>(() => HomeRepositoryImp(getIt()));
    getIt.registerLazySingleton<LiveOffersRepository>(
        () => LiveOffersRepositoryImp(getIt()));
    getIt.registerLazySingleton<RewardsRepository>(
        () => RewardsRepositoryImp(getIt()));
    getIt.registerLazySingleton<TopUsersRepository>(
        () => TopUsersRepositoryImp(getIt()));
    getIt.registerLazySingleton<ProfileRepository>(
        () => ProfileRepositoryImp(getIt()));
    getIt.registerLazySingleton<TasksRepository>(() => TasksRepositoryImp(getIt()));

    // DATA SOURCES
    getIt.registerLazySingleton<AuthDataSource>(() => AuthRemoteDataSourceImp());
    getIt.registerLazySingleton<HomeDataSource>(() => HomeRemoteDataSourceImp());
    getIt.registerLazySingleton<LiveOffersDataSource>(
        () => LiveOffersRemoteDataSourceImp());
    getIt.registerLazySingleton<RewardsDataSource>(
        () => RewardsRemoteDataSourceImp());
    getIt.registerLazySingleton<TopUsersDataSource>(
        () => TopUsersRemoteDataSourceImp());
    getIt.registerLazySingleton<ProfileDataSource>(
        () => ProfileRemoteDataSourceImp());
    getIt.registerLazySingleton<TasksDataSource>(() => TasksRemoteDataSourceImp());

    // Use cases
    getIt.registerLazySingleton(() => LoginUsecase(getIt<AuthRepository>()));
    getIt.registerLazySingleton(() => CheckEmailUsecase(getIt<AuthRepository>()));
    getIt.registerLazySingleton(() => RegisterUsecase(getIt<AuthRepository>()));
    getIt.registerLazySingleton(() => GetHomeUsecase(getIt<HomeRepository>()));
    getIt.registerLazySingleton(() => GetLiveOffersUsecase(getIt<LiveOffersRepository>()));
    getIt.registerLazySingleton(() => GetProfileUsecase(getIt<ProfileRepository>()));
    getIt.registerLazySingleton(() => DeleteAccountUsecase(getIt<ProfileRepository>()));
    getIt.registerLazySingleton(() => GetPayoutsUsecase(getIt<RewardsRepository>()));
    getIt.registerLazySingleton(() => GetTransactionsUsecase(getIt<RewardsRepository>()));
    getIt.registerLazySingleton(() => GetOrdersUsecase(getIt<RewardsRepository>()));
    getIt.registerLazySingleton(() => RedeemUsecase(getIt<RewardsRepository>()));
    getIt.registerLazySingleton(() => GetTasksUsecase(getIt<TasksRepository>()));
    getIt.registerLazySingleton(() => GetTasksOrdersUsecase(getIt<TasksRepository>()));
    getIt.registerLazySingleton(() => AddTaskOrderUsecase(getIt<TasksRepository>()));
    getIt.registerLazySingleton(() => ReserveCommentUsecase(getIt<TasksRepository>()));
    getIt.registerLazySingleton(() => GetTopUsersUsecase(getIt<TopUsersRepository>()));

    // BLOCS
    getIt.registerFactory(() => LoginBloc(getIt<LoginUsecase>()));
    getIt.registerFactory(() => RegisterBloc(getIt<RegisterUsecase>()));
    getIt.registerFactory(() => CheckEmailBloc(getIt<CheckEmailUsecase>()));
    getIt.registerFactory(() => HomeBloc(getIt<GetHomeUsecase>()));
    getIt.registerFactory(() => LiveOffersBloc(getIt<GetLiveOffersUsecase>()));
    getIt.registerFactory(() => ProfileBloc(getIt<GetProfileUsecase>()));
    getIt.registerFactory(() => DeleteAccountBloc(getIt<DeleteAccountUsecase>()));
    getIt.registerFactory(() => PayoutsBloc(getIt<GetPayoutsUsecase>()));
    getIt.registerFactory(() => RedeemBloc(getIt<RedeemUsecase>()));
    getIt.registerFactory(() => OrdersBloc(getIt<GetOrdersUsecase>()));
    getIt.registerFactory(() => TransactionsBloc(getIt<GetTransactionsUsecase>()));
    getIt.registerFactory(() => TopUsersBloc(getIt<TopUsersRepository>()));
    getIt.registerFactory(() => TasksBloc(getIt<TasksRepository>()));
    getIt.registerFactory(() => CommentsBloc(getIt<TasksRepository>()));
    getIt.registerFactory(() => DoTaskBloc(getIt<TasksRepository>()));
    getIt.registerFactory(() => TasksOrdersBloc(getIt<TasksRepository>()));

    getIt.registerLazySingleton(() => AppConfigBloc());
  }
}
