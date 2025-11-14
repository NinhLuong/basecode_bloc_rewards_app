import 'package:dartz/dartz.dart';
import 'package:bloc_rewards/config/errors/failure.dart';
import 'package:bloc_rewards/core/domain/usecases/base_usecase.dart';
import 'package:bloc_rewards/features/auth/domain/entities/user_entity.dart';
import 'package:bloc_rewards/features/auth/domain/parameters/register_parameters.dart';
import 'package:bloc_rewards/features/auth/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class RegisterUseCase extends UseCase<UserEntity, RegisterParameters> {
  final AuthRepository _repository;

  RegisterUseCase(this._repository);

  @override
  Future<Either<Failure, UserEntity>> call({required RegisterParameters params}) async {
    return await _repository.register(params);
  }
}
