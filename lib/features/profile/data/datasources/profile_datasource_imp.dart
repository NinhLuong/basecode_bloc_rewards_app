import 'package:injectable/injectable.dart';
import 'package:magic_rewards/config/secret/api/apis_urls.dart';
import 'package:magic_rewards/core/data/datasources/remote/api/api_services.dart';
import 'package:magic_rewards/core/data/repositories/app_response.dart';
import 'package:magic_rewards/features/profile/data/datasources/profile_datasource.dart';
import 'package:magic_rewards/features/profile/data/models/profile_model.dart';
import 'package:magic_rewards/features/profile/domain/parameters/delete_account_parameters.dart';
import 'package:magic_rewards/features/profile/domain/parameters/profile_parameters.dart';

@LazySingleton(as: ProfileDataSource)
class ProfileRemoteDataSourceImp extends ProfileDataSource {
  final ApiServices _apiServices;

  ProfileRemoteDataSourceImp(this._apiServices);

  @override
  Future<ProfileModel> getProfile(ProfileParameters parameters) async {
    AppResponse appResponse =
        await _apiServices.post(ApisUrls.profile, data: parameters.toJson());
    return ProfileModel.fromJson(appResponse.data);
  }

  @override
  Future<void> deleteAccount(DeleteAccountParameters parameters) async {
    await _apiServices.post(ApisUrls.deleteAccount, data: parameters.toJson());
  }
}
