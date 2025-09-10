import 'package:dartz/dartz.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';
import 'package:magic_rewards/features/auth/data/models/user_model.dart';
import 'package:magic_rewards/features/auth/domain/entities/check_email_entity.dart';
import 'package:magic_rewards/features/auth/domain/parameters/check_email_parameters.dart';

import '../../../../config/errors/errors_handler.dart';
import '../../../../config/errors/failure.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/parameters/login_parameters.dart';
import '../../domain/parameters/register_parameters.dart';
import '../../domain/repository/auth_repository.dart';
import '../data_source/auth_data_source.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImp implements AuthRepository {
  final AuthDataSource _authDataSource;

  AuthRepositoryImp(this._authDataSource);

  @override
  Future<Either<Failure, UserEntity>> login(LoginParameters parameters) async {
    try {
      final UserModel res = await _authDataSource.login(parameters);
      final user = res.toEntity();
      await CacheStorageServices().setToken(user.accessToken!);
      await CacheStorageServices().setUserName(user.userName);
      await CacheStorageServices().setFullName(user.fullName);
      await CacheStorageServices().setAccountId(user.accountId);
      await CacheStorageServices().setEmail(user.email);
      return Right(user);
    } catch (e) {
      return Left(ErrorsHandler.failureThrower(e));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> register(
      RegisterParameters parameters) async {
    try {
      final UserModel res = await _authDataSource.register(parameters);
      final user = res.toEntity();
      await CacheStorageServices().setToken(user.accessToken!);
      await CacheStorageServices().setUserName(user.userName);
      await CacheStorageServices().setFullName(user.fullName);
      await CacheStorageServices().setAccountId(user.accountId);
      await CacheStorageServices().setEmail(user.email);
      return Right(user);
    } catch (e) {
      return Left(ErrorsHandler.failureThrower(e));
    }
  }

  @override
  Future<Either<Failure, CheckEmailEntity>> checkEmail(
      CheckEmailParameters parameters) {
    return ErrorsHandler.handleEither(
        () => _authDataSource.checkEmail(parameters));
  }
}
