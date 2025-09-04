import 'package:dartz/dartz.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/features/top_users/domain/entities/top_users_entity.dart';
import 'package:magic_rewards/features/top_users/domain/parameters/top_users_parameters.dart';

abstract class TopUsersRepository {
  Future<Either<Failure, TopUsersEntity>> getTopUsers(
      TopUsersParameters parameters);
}
