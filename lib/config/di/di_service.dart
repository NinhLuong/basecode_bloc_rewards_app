import 'package:get_it/get_it.dart';
import 'package:magic_rewards/features/auth/data/data_source/auth_data_source.dart';
import 'package:magic_rewards/features/auth/data/data_source/auth_remote_data_source_imp.dart';
import 'package:magic_rewards/features/auth/data/repository/auth_repository_imp.dart';
import 'package:magic_rewards/features/auth/domain/repository/auth_repository.dart';
import 'package:magic_rewards/features/auth/presentation/blocs/check_email/check_email_bloc.dart';
import 'package:magic_rewards/features/auth/presentation/blocs/login/login_bloc.dart';
import 'package:magic_rewards/features/auth/presentation/blocs/register/register_bloc.dart';
import 'package:magic_rewards/features/home/data/data_source/home_data_source.dart';
import 'package:magic_rewards/features/home/data/data_source/home_data_source_imp.dart';
import 'package:magic_rewards/features/home/data/repository/home_repository_imp.dart';
import 'package:magic_rewards/features/home/domin/repository/home_repository.dart';
import 'package:magic_rewards/core/presentation/bloc/app_config_bloc/app_config_bloc.dart';
import 'package:magic_rewards/features/home/presentation/blocs/home_bloc/home_bloc.dart';
import 'package:magic_rewards/features/live_offers/data/data_source/live_offers_data_source.dart';
import 'package:magic_rewards/features/live_offers/data/data_source/live_offers_data_source_imp.dart';
import 'package:magic_rewards/features/live_offers/data/repository/live_offers_repository_imp.dart';
import 'package:magic_rewards/features/live_offers/domain/repository/live_offers_repository.dart';
import 'package:magic_rewards/features/live_offers/presentation/blocs/live_offers_bloc/live_offers_bloc.dart';
import 'package:magic_rewards/features/profile/data/data_source/profile_data_source.dart';
import 'package:magic_rewards/features/profile/data/data_source/profile_data_source_imp.dart';
import 'package:magic_rewards/features/profile/data/repository/profile_repository_imp.dart';
import 'package:magic_rewards/features/profile/domain/repository/profile_repository.dart';
import 'package:magic_rewards/features/profile/presentation/blocs/delete_account_bloc/delete_account_bloc.dart';
import 'package:magic_rewards/features/profile/presentation/blocs/profile_bloc/profile_bloc.dart';
import 'package:magic_rewards/features/rewards/data/data_source/rewards_data_source.dart';
import 'package:magic_rewards/features/rewards/data/data_source/rewards_data_source_imp.dart';
import 'package:magic_rewards/features/rewards/data/repository/rewards_repository_imp.dart';
import 'package:magic_rewards/features/rewards/domain/repository/rewards_repository.dart';
import 'package:magic_rewards/features/rewards/presentation/blocs/orders_bloc/orders_bloc.dart';
import 'package:magic_rewards/features/rewards/presentation/blocs/payouts_bloc/payouts_bloc.dart';
import 'package:magic_rewards/features/rewards/presentation/blocs/redeem_bloc/redeem_bloc.dart';
import 'package:magic_rewards/features/rewards/presentation/blocs/transactions_bloc/transactions_bloc.dart';
import 'package:magic_rewards/features/tasks/data/data_source/tasks_data_source.dart';
import 'package:magic_rewards/features/tasks/data/data_source/tasks_data_source_imp.dart';
import 'package:magic_rewards/features/tasks/data/repository/tasks_repository_imp.dart';
import 'package:magic_rewards/features/tasks/dmain/repository/tasks_repository.dart';
import 'package:magic_rewards/features/tasks/presentation/blocs/comments_bloc/comments_bloc.dart';
import 'package:magic_rewards/features/tasks/presentation/blocs/do_task_bloc/do_task_bloc.dart';
import 'package:magic_rewards/features/tasks/presentation/blocs/tasks_bloc/tasks_bloc.dart';
import 'package:magic_rewards/features/tasks/presentation/blocs/tasks_orders_bloc/tasks_orders_bloc.dart';
import 'package:magic_rewards/features/top_users/data/data_source/top_users_data_source.dart';
import 'package:magic_rewards/features/top_users/data/data_source/top_users_data_source_imp.dart';
import 'package:magic_rewards/features/top_users/data/repository/top_users_repository_imp.dart';
import 'package:magic_rewards/features/top_users/domain/repository/top_users_repository.dart';
import 'package:magic_rewards/features/top_users/presentation/blocs/top_users_bloc/top_users_bloc.dart';

final di = GetIt.instance;

/// This class [DIServices] is define to inject values and variables (Objects) into memory when the application is opened,
/// those values will remain stored and preserved for direct access in randomaccess memory according to the specified conditions
/// and situations.
///
/// The concept of injection depends on dependency injection, using the get_it library to provide this type of service,
///
/// it is necessary You have to call [DIServices.init] in main.dart, main finction, before [runApp]
///
/// 1- to inject Your Bloc object use [registerFactory] function
///    Ex:   di.registerFactory(() => YourBloc(di()));
/// 2- to inject Your Repository, Data Source object use [registerLazySingleton] function
///    Ex:   di.registerLazySingleton(() => YourDataSource());
///    Ex:   di.registerLazySingleton(() => YourDataSource());
///
/// you can get any Object you inject by call [di]
///    Ex: di<YourBloc>();

// TODO: add (BLOCs , REPOSITORIES , DATA SOURCES)
class DIServices {
  static DIServices? _instance;

  DIServices._();

  factory DIServices() => _instance ??= DIServices._();

  void init() {
    //// BLOCS
    di.registerFactory(() => LoginBloc(di()));
    di.registerFactory(() => RegisterBloc(di()));
    di.registerFactory(() => HomeBloc(di()));
    di.registerFactory(() => LiveOffersBloc(di()));
    di.registerFactory(() => PayoutsBloc(di()));
    di.registerFactory(() => RedeemBloc(di()));
    di.registerFactory(() => OrdersBloc(di()));
    di.registerFactory(() => TransactionsBloc(di()));
    di.registerFactory(() => TopUsersBloc(di()));
    di.registerFactory(() => ProfileBloc(di()));
    di.registerFactory(() => DeleteAccountBloc(di()));
    di.registerFactory(() => CheckEmailBloc(di()));
    di.registerFactory(() => TasksBloc(di()));
    di.registerFactory(() => CommentsBloc(di()));
    di.registerFactory(() => DoTaskBloc(di()));
    di.registerFactory(() => TasksOrdersBloc(di()));

    di.registerLazySingleton(() => AppConfigBloc());

    //// REPOSITORIES
    di.registerLazySingleton<AuthRepository>(() => AuthRepositoryImp(di()));
    di.registerLazySingleton<HomeRepository>(() => HomeRepositoryImp(di()));
    di.registerLazySingleton<LiveOffersRepository>(
        () => LiveOffersRepositoryImp(di()));
    di.registerLazySingleton<RewardsRepository>(
        () => RewardsRepositoryImp(di()));
    di.registerLazySingleton<TopUsersRepository>(
        () => TopUsersRepositoryImp(di()));
    di.registerLazySingleton<ProfileRepository>(
        () => ProfileRepositoryImp(di()));
    di.registerLazySingleton<TasksRepository>(() => TasksRepositoryImp(di()));

    //// DATA SOURCES
    di.registerLazySingleton<AuthDataSource>(() => AuthRemoteDataSourceImp());
    di.registerLazySingleton<HomeDataSource>(() => HomeRemoteDataSourceImp());
    di.registerLazySingleton<LiveOffersDataSource>(
        () => LiveOffersRemoteDataSourceImp());
    di.registerLazySingleton<RewardsDataSource>(
        () => RewardsRemoteDataSourceImp());
    di.registerLazySingleton<TopUsersDataSource>(
        () => TopUsersRemoteDataSourceImp());
    di.registerLazySingleton<ProfileDataSource>(
        () => ProfileRemoteDataSourceImp());
    di.registerLazySingleton<TasksDataSource>(() => TasksRemoteDataSourceImp());
  }
}
