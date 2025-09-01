import 'package:dartz/dartz.dart';
import 'package:magic_rewards/core/data/errors/failure.dart';
import 'package:magic_rewards/core/domain/usecases/usecase.dart';
import 'package:magic_rewards/features/auth/domain/entities/user_entity.dart';
import 'package:magic_rewards/features/auth/domain/parameters/register_parameters.dart';
import 'package:magic_rewards/features/auth/domain/repository/auth_repository.dart';

class RegisterUsecase extends UseCase<UserEntity, RegisterParameters> {
  final AuthRepository authRepository;

  RegisterUsecase(this.authRepository);

  @override
  Future<Either<Failure, UserEntity>> call({required RegisterParameters params}) async {
    return await authRepository.register(params);
  }
}
