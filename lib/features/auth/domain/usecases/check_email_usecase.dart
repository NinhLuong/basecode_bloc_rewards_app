import 'package:dartz/dartz.dart';
import 'package:magic_rewards/core/data/errors/failure.dart';
import 'package:magic_rewards/core/domain/usecases/base_usecase.dart';
import 'package:magic_rewards/features/auth/domain/entities/check_email_entity.dart';
import 'package:magic_rewards/features/auth/domain/parameters/check_email_parameters.dart';
import 'package:magic_rewards/features/auth/domain/repository/auth_repository.dart';

class CheckEmailUsecase extends UseCase<CheckEmailEntity, CheckEmailParameters> {
  final AuthRepository authRepository;

  CheckEmailUsecase(this.authRepository);

  @override
  Future<Either<Failure, CheckEmailEntity>> call({required CheckEmailParameters params}) async {
    return await authRepository.checkEmail(params);
  }
}
