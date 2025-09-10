import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/core/domain/usecases/base_usecase.dart';
import 'package:magic_rewards/features/top_users/domain/entities/top_users_entity.dart';
import 'package:magic_rewards/features/top_users/domain/parameters/top_users_parameters.dart';
import 'package:magic_rewards/features/top_users/domain/repository/top_users_repository.dart';

@lazySingleton
class GetTopUsersUseCase extends UseCase<TopUsersEntity, TopUsersParameters> {
  final TopUsersRepository topUsersRepository;

  GetTopUsersUseCase(this.topUsersRepository);

  @override
  Future<Either<Failure, TopUsersEntity>> call({required TopUsersParameters params}) async {
    return await topUsersRepository.getTopUsers(params);
  }
}
