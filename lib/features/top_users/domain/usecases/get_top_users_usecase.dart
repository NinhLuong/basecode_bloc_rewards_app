import 'package:dartz/dartz.dart';
import 'package:magic_rewards/core/data/errors/failure.dart';
import 'package:magic_rewards/core/domain/usecases/usecase.dart';
import 'package:magic_rewards/features/top_users/domain/entities/top_users_entity.dart';
import 'package:magic_rewards/features/top_users/domain/parameters/top_users_parameters.dart';
import 'package:magic_rewards/features/top_users/domain/repository/top_users_repository.dart';

class GetTopUsersUsecase extends UseCase<TopUsersEntity, TopUsersParameters> {
  final TopUsersRepository topUsersRepository;

  GetTopUsersUsecase(this.topUsersRepository);

  @override
  Future<Either<Failure, TopUsersEntity>> call({required TopUsersParameters params}) async {
    return await topUsersRepository.getTopUsers(params);
  }
}
