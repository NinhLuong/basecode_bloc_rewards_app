import 'package:magic_rewards/features/profile/data/models/profile_model.dart';
import 'package:magic_rewards/features/profile/domain/parameters/delete_account_parameters.dart';
import 'package:magic_rewards/features/profile/domain/parameters/profile_parameters.dart';

abstract class ProfileDataSource {
  Future<ProfileModel> getProfile(ProfileParameters parameters);

  Future<void> deleteAccount(DeleteAccountParameters parameters);
}
