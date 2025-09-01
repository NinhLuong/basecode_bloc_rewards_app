import 'package:dartz/dartz.dart';
import 'package:magic_rewards/core/data/errors/failure.dart';
import 'package:magic_rewards/core/domain/usecases/usecase.dart';
import 'package:magic_rewards/features/profile/domain/parameters/delete_account_parameters.dart';
import 'package:magic_rewards/features/profile/domain/repository/profile_repository.dart';

class DeleteAccountUsecase extends UseCase<void, DeleteAccountParameters> {
  final ProfileRepository profileRepository;

  DeleteAccountUsecase(this.profileRepository);

  @override
  Future<Either<Failure, void>> call({required DeleteAccountParameters params}) async {
    return await profileRepository.deleteAccount(params);
  }
}
