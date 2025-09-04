import 'package:dartz/dartz.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/core/domain/usecases/base_usecase.dart';
import 'package:magic_rewards/features/auth/domain/entities/user_entity.dart';
import 'package:magic_rewards/features/auth/domain/parameters/login_parameters.dart';
import 'package:magic_rewards/features/auth/domain/repository/auth_repository.dart';


class LoginUsecase extends UseCase<UserEntity, LoginParameters> {
  final AuthRepository authRepository;

  LoginUsecase(this.authRepository);

  @override
  Future<Either<Failure, UserEntity>> call({required LoginParameters params}) async {
    if (params.username.isEmpty || params.password.length < 6) {
      return Left(Failure('Invalid credentials'));
    }
    return await authRepository.login(params);
  }
}