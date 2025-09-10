import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/core/domain/usecases/base_usecase.dart';
import 'package:magic_rewards/features/profile/domain/entities/profile_entity.dart';
import 'package:magic_rewards/features/profile/domain/parameters/profile_parameters.dart';
import 'package:magic_rewards/features/profile/domain/repository/profile_repository.dart';

@lazySingleton
class GetProfileUseCase extends UseCase<ProfileEntity, ProfileParameters> {
  final ProfileRepository profileRepository;

  GetProfileUseCase(this.profileRepository);

  @override
  Future<Either<Failure, ProfileEntity>> call({required ProfileParameters params}) async {
    return await profileRepository.getProfile(params);
  }
}
