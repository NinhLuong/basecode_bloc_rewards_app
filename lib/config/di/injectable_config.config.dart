// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../core/data/datasources/local/cache/cache_storage_services.dart'
    as _i505;
import '../../core/data/datasources/remote/api/api_services.dart' as _i294;
import '../../core/presentation/bloc/app_config_bloc/app_config_bloc.dart'
    as _i147;
import '../../features/auth/data/datasources/local/user_local_data_source.dart'
    as _i931;
import '../../features/auth/data/datasources/remote/auth_datasource.dart'
    as _i195;
import '../../features/auth/data/datasources/remote/auth_datasource_imp.dart'
    as _i918;
import '../../features/auth/data/repository/auth_repository_imp.dart' as _i794;
import '../../features/auth/domain/repository/auth_repository.dart' as _i961;
import '../../features/auth/domain/usecases/check_email_usecase.dart' as _i879;
import '../../features/auth/domain/usecases/login_usecase.dart' as _i188;
import '../../features/auth/domain/usecases/register_usecase.dart' as _i941;
import '../../features/auth/presentation/blocs/check_email/check_email_bloc.dart'
    as _i60;
import '../../features/auth/presentation/blocs/login/login_bloc.dart' as _i1018;
import '../../features/auth/presentation/blocs/register/register_bloc.dart'
    as _i517;
import '../../features/home/data/datasources/home_datasource.dart' as _i1055;
import '../../features/home/data/datasources/home_datasource_imp.dart' as _i142;
import '../../features/home/data/repository/home_repository_imp.dart' as _i342;
import '../../features/home/domain/repository/home_repository.dart' as _i541;
import '../../features/home/domain/usecases/get_home_usecase.dart' as _i836;
import '../../features/home/presentation/blocs/home_bloc/home_bloc.dart'
    as _i665;
import '../../features/live_offers/data/datasources/live_offers_datasource.dart'
    as _i476;
import '../../features/live_offers/data/datasources/live_offers_datasource_imp.dart'
    as _i107;
import '../../features/live_offers/data/repository/live_offers_repository_imp.dart'
    as _i100;
import '../../features/live_offers/domain/repository/live_offers_repository.dart'
    as _i928;
import '../../features/live_offers/domain/usecases/get_live_offers_usecase.dart'
    as _i133;
import '../../features/live_offers/presentation/blocs/live_offers_bloc/live_offers_bloc.dart'
    as _i611;
import '../../features/profile/data/datasources/profile_datasource.dart'
    as _i553;
import '../../features/profile/data/datasources/profile_datasource_imp.dart'
    as _i35;
import '../../features/profile/data/repository/profile_repository_imp.dart'
    as _i335;
import '../../features/profile/domain/repository/profile_repository.dart'
    as _i364;
import '../../features/profile/domain/usecases/delete_account_usecase.dart'
    as _i1056;
import '../../features/profile/domain/usecases/get_profile_usecase.dart'
    as _i965;
import '../../features/profile/presentation/blocs/delete_account_bloc/delete_account_bloc.dart'
    as _i287;
import '../../features/profile/presentation/blocs/profile_bloc/profile_bloc.dart'
    as _i118;
import '../../features/rewards/data/datasources/rewards_datasource.dart'
    as _i427;
import '../../features/rewards/data/datasources/rewards_datasource_imp.dart'
    as _i222;
import '../../features/rewards/data/repository/rewards_repository_imp.dart'
    as _i544;
import '../../features/rewards/domain/repository/rewards_repository.dart'
    as _i843;
import '../../features/rewards/domain/usecases/get_orders_usecase.dart' as _i12;
import '../../features/rewards/domain/usecases/get_payouts_usecase.dart'
    as _i761;
import '../../features/rewards/domain/usecases/get_transactions_usecase.dart'
    as _i380;
import '../../features/rewards/domain/usecases/redeem_usecase.dart' as _i33;
import '../../features/rewards/presentation/blocs/orders_bloc/orders_bloc.dart'
    as _i481;
import '../../features/rewards/presentation/blocs/payouts_bloc/payouts_bloc.dart'
    as _i1033;
import '../../features/rewards/presentation/blocs/redeem_bloc/redeem_bloc.dart'
    as _i132;
import '../../features/rewards/presentation/blocs/transactions_bloc/transactions_bloc.dart'
    as _i886;
import '../../features/tasks/data/datasources/tasks_datasource.dart' as _i595;
import '../../features/tasks/data/datasources/tasks_datasource_imp.dart'
    as _i86;
import '../../features/tasks/data/repository/tasks_repository_imp.dart'
    as _i436;
import '../../features/tasks/domain/repository/tasks_repository.dart' as _i429;
import '../../features/tasks/domain/usecases/add_task_order_usecase.dart'
    as _i993;
import '../../features/tasks/domain/usecases/get_tasks_orders_usecase.dart'
    as _i868;
import '../../features/tasks/domain/usecases/get_tasks_usecase.dart' as _i48;
import '../../features/tasks/domain/usecases/reserve_comment_usecase.dart'
    as _i568;
import '../../features/tasks/presentation/blocs/comments_bloc/comments_bloc.dart'
    as _i207;
import '../../features/tasks/presentation/blocs/do_task_bloc/do_task_bloc.dart'
    as _i472;
import '../../features/tasks/presentation/blocs/tasks_bloc/tasks_bloc.dart'
    as _i449;
import '../../features/tasks/presentation/blocs/tasks_orders_bloc/tasks_orders_bloc.dart'
    as _i706;
import '../../features/top_users/data/datasources/top_users_datasource.dart'
    as _i989;
import '../../features/top_users/data/datasources/top_users_datasource_imp.dart'
    as _i729;
import '../../features/top_users/data/repository/top_users_repository_imp.dart'
    as _i694;
import '../../features/top_users/domain/repository/top_users_repository.dart'
    as _i656;
import '../../features/top_users/domain/usecases/get_top_users_usecase.dart'
    as _i435;
import '../../features/top_users/presentation/blocs/top_users_bloc/top_users_bloc.dart'
    as _i85;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i505.CacheStorageServices>(
      () => _i505.CacheStorageServices.new(),
    );
    gh.factory<_i147.AppConfigBloc>(() => _i147.AppConfigBloc());
    gh.lazySingleton<_i294.ApiServices>(() => _i294.ApiServices());
    gh.lazySingleton<_i427.RewardsDataSource>(
      () => _i222.RewardsRemoteDataSourceImp(gh<_i294.ApiServices>()),
    );
    gh.lazySingleton<_i195.AuthDataSource>(
      () => _i918.AuthRemoteDataSourceImp(gh<_i294.ApiServices>()),
    );
    gh.lazySingleton<_i553.ProfileDataSource>(
      () => _i35.ProfileRemoteDataSourceImp(gh<_i294.ApiServices>()),
    );
    gh.lazySingleton<_i476.LiveOffersDataSource>(
      () => _i107.LiveOffersRemoteDataSourceImp(gh<_i294.ApiServices>()),
    );
    gh.lazySingleton<_i595.TasksDataSource>(
      () => _i86.TasksRemoteDataSourceImp(gh<_i294.ApiServices>()),
    );
    gh.lazySingleton<_i1055.HomeDataSource>(
      () => _i142.HomeRemoteDataSourceImp(gh<_i294.ApiServices>()),
    );
    gh.lazySingleton<_i989.TopUsersDataSource>(
      () => _i729.TopUsersRemoteDataSourceImp(gh<_i294.ApiServices>()),
    );
    gh.lazySingleton<_i931.UserLocalDataSource>(
      () => _i931.UserLocalDataSourceImpl(gh<_i505.CacheStorageServices>()),
    );
    gh.lazySingleton<_i928.LiveOffersRepository>(
      () => _i100.LiveOffersRepositoryImp(gh<_i476.LiveOffersDataSource>()),
    );
    gh.lazySingleton<_i133.GetLiveOffersUseCase>(
      () => _i133.GetLiveOffersUseCase(gh<_i928.LiveOffersRepository>()),
    );
    gh.lazySingleton<_i541.HomeRepository>(
      () => _i342.HomeRepositoryImp(gh<_i1055.HomeDataSource>()),
    );
    gh.lazySingleton<_i843.RewardsRepository>(
      () => _i544.RewardsRepositoryImp(gh<_i427.RewardsDataSource>()),
    );
    gh.lazySingleton<_i429.TasksRepository>(
      () => _i436.TasksRepositoryImp(gh<_i595.TasksDataSource>()),
    );
    gh.lazySingleton<_i961.AuthRepository>(
      () => _i794.AuthRepositoryImp(
        gh<_i195.AuthDataSource>(),
        gh<_i931.UserLocalDataSource>(),
      ),
    );
    gh.lazySingleton<_i836.GetHomeUseCase>(
      () => _i836.GetHomeUseCase(gh<_i541.HomeRepository>()),
    );
    gh.lazySingleton<_i33.RedeemUseCase>(
      () => _i33.RedeemUseCase(gh<_i843.RewardsRepository>()),
    );
    gh.lazySingleton<_i12.GetOrdersUseCase>(
      () => _i12.GetOrdersUseCase(gh<_i843.RewardsRepository>()),
    );
    gh.lazySingleton<_i380.GetTransactionsUseCase>(
      () => _i380.GetTransactionsUseCase(gh<_i843.RewardsRepository>()),
    );
    gh.lazySingleton<_i761.GetPayoutsUseCase>(
      () => _i761.GetPayoutsUseCase(gh<_i843.RewardsRepository>()),
    );
    gh.factory<_i611.LiveOffersBloc>(
      () => _i611.LiveOffersBloc(gh<_i133.GetLiveOffersUseCase>()),
    );
    gh.lazySingleton<_i364.ProfileRepository>(
      () => _i335.ProfileRepositoryImp(gh<_i553.ProfileDataSource>()),
    );
    gh.factory<_i665.HomeBloc>(
      () => _i665.HomeBloc(
        gh<_i836.GetHomeUseCase>(),
        gh<_i931.UserLocalDataSource>(),
      ),
    );
    gh.factory<_i132.RedeemBloc>(
      () => _i132.RedeemBloc(gh<_i33.RedeemUseCase>()),
    );
    gh.lazySingleton<_i965.GetProfileUseCase>(
      () => _i965.GetProfileUseCase(gh<_i364.ProfileRepository>()),
    );
    gh.lazySingleton<_i1056.DeleteAccountUseCase>(
      () => _i1056.DeleteAccountUseCase(gh<_i364.ProfileRepository>()),
    );
    gh.factory<_i481.OrdersBloc>(
      () => _i481.OrdersBloc(gh<_i12.GetOrdersUseCase>()),
    );
    gh.lazySingleton<_i941.RegisterUseCase>(
      () => _i941.RegisterUseCase(gh<_i961.AuthRepository>()),
    );
    gh.lazySingleton<_i188.LoginUseCase>(
      () => _i188.LoginUseCase(gh<_i961.AuthRepository>()),
    );
    gh.lazySingleton<_i993.AddTaskOrderUseCase>(
      () => _i993.AddTaskOrderUseCase(gh<_i429.TasksRepository>()),
    );
    gh.lazySingleton<_i568.ReserveCommentUseCase>(
      () => _i568.ReserveCommentUseCase(gh<_i429.TasksRepository>()),
    );
    gh.lazySingleton<_i48.GetTasksUseCase>(
      () => _i48.GetTasksUseCase(gh<_i429.TasksRepository>()),
    );
    gh.lazySingleton<_i868.GetTasksOrdersUseCase>(
      () => _i868.GetTasksOrdersUseCase(gh<_i429.TasksRepository>()),
    );
    gh.factory<_i706.TasksOrdersBloc>(
      () => _i706.TasksOrdersBloc(gh<_i429.TasksRepository>()),
    );
    gh.factory<_i207.CommentsBloc>(
      () => _i207.CommentsBloc(gh<_i429.TasksRepository>()),
    );
    gh.factory<_i449.TasksBloc>(
      () => _i449.TasksBloc(gh<_i429.TasksRepository>()),
    );
    gh.factory<_i472.DoTaskBloc>(
      () => _i472.DoTaskBloc(gh<_i429.TasksRepository>()),
    );
    gh.lazySingleton<_i656.TopUsersRepository>(
      () => _i694.TopUsersRepositoryImp(gh<_i989.TopUsersDataSource>()),
    );
    gh.factory<_i287.DeleteAccountBloc>(
      () => _i287.DeleteAccountBloc(gh<_i1056.DeleteAccountUseCase>()),
    );
    gh.factory<_i886.TransactionsBloc>(
      () => _i886.TransactionsBloc(gh<_i380.GetTransactionsUseCase>()),
    );
    gh.factory<_i85.TopUsersBloc>(
      () => _i85.TopUsersBloc(gh<_i656.TopUsersRepository>()),
    );
    gh.lazySingleton<_i879.CheckEmailUseCase>(
      () => _i879.CheckEmailUseCase(gh<_i961.AuthRepository>()),
    );
    gh.factory<_i1033.PayoutsBloc>(
      () => _i1033.PayoutsBloc(gh<_i761.GetPayoutsUseCase>()),
    );
    gh.factory<_i1018.LoginBloc>(
      () => _i1018.LoginBloc(gh<_i188.LoginUseCase>()),
    );
    gh.lazySingleton<_i435.GetTopUsersUseCase>(
      () => _i435.GetTopUsersUseCase(gh<_i656.TopUsersRepository>()),
    );
    gh.factory<_i118.ProfileBloc>(
      () => _i118.ProfileBloc(gh<_i965.GetProfileUseCase>()),
    );
    gh.factory<_i517.RegisterBloc>(
      () => _i517.RegisterBloc(gh<_i941.RegisterUseCase>()),
    );
    gh.factory<_i60.CheckEmailBloc>(
      () => _i60.CheckEmailBloc(gh<_i879.CheckEmailUseCase>()),
    );
    return this;
  }
}
