import 'package:dartz/dartz.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/features/profile/domain/entities/profile_entity.dart';
import 'package:magic_rewards/features/profile/domain/parameters/delete_account_parameters.dart';
import 'package:magic_rewards/features/profile/domain/parameters/profile_parameters.dart';

abstract class ProfileRepository {
  Future<Either<Failure, ProfileEntity>> getProfile(
      ProfileParameters parameters);

  Future<Either<Failure, void>> deleteAccount(
      DeleteAccountParameters parameters);
}
