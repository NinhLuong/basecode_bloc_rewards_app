import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:magic_rewards/config/errors/errors_handler.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/features/profile/data/datasources/profile_datasource.dart';
import 'package:magic_rewards/features/profile/domain/entities/profile_entity.dart';
import 'package:magic_rewards/features/profile/domain/parameters/delete_account_parameters.dart';
import 'package:magic_rewards/features/profile/domain/parameters/profile_parameters.dart';
import 'package:magic_rewards/features/profile/domain/repository/profile_repository.dart';

@LazySingleton(as: ProfileRepository)
class ProfileRepositoryImp extends ProfileRepository {
  final ProfileDataSource profileDataSource;

  ProfileRepositoryImp(this.profileDataSource);

  @override
  Future<Either<Failure, ProfileEntity>> getProfile(
      ProfileParameters parameters) {
    return ErrorsHandler.handleEither(
        () => profileDataSource.getProfile(parameters));
  }

  @override
  Future<Either<Failure, void>> deleteAccount(
      DeleteAccountParameters parameters) async {
    try {
      final result = await profileDataSource.deleteAccount(parameters);
      return Right(result);
    } catch (e) {
      return Left(ErrorsHandler.failureThrower(e));
    }
  }
}
