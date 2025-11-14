import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:bloc_rewards/config/errors/failure.dart';
import 'package:bloc_rewards/core/domain/usecases/base_usecase.dart';
import 'package:bloc_rewards/features/profile/domain/parameters/delete_account_parameters.dart';
import 'package:bloc_rewards/features/profile/domain/repository/profile_repository.dart';

@lazySingleton
class DeleteAccountUseCase extends UseCase<void, DeleteAccountParameters> {
  final ProfileRepository profileRepository;

  DeleteAccountUseCase(this.profileRepository);

  @override
  Future<Either<Failure, void>> call({required DeleteAccountParameters params}) async {
    return await profileRepository.deleteAccount(params);
  }
}
