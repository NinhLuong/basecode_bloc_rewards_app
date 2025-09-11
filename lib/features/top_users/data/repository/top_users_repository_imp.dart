import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:magic_rewards/config/errors/errors_handler.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/features/top_users/data/datasources/top_users_datasource.dart';
import 'package:magic_rewards/features/top_users/domain/entities/top_users_entity.dart';
import 'package:magic_rewards/features/top_users/domain/parameters/top_users_parameters.dart';
import 'package:magic_rewards/features/top_users/domain/repository/top_users_repository.dart';

@LazySingleton(as: TopUsersRepository)
class TopUsersRepositoryImp extends TopUsersRepository {
  final TopUsersDataSource liveOffersDataSource;

  TopUsersRepositoryImp(this.liveOffersDataSource);

  @override
  Future<Either<Failure, TopUsersEntity>> getTopUsers(
      TopUsersParameters parameters) {
    return ErrorsHandler.handleEither(
        () => liveOffersDataSource.getTopUsers(parameters));
  }
}
