import 'package:injectable/injectable.dart';
import 'package:magic_rewards/features/auth/data/models/check_email_model.dart';
import 'package:magic_rewards/features/auth/domain/parameters/check_email_parameters.dart';

import '../../../../../config/secret/api/apis_urls.dart';
import '../../../../../core/data/datasources/remote/api/api_services.dart';
import '../../../../../core/data/repositories/app_response.dart';
import '../../../domain/parameters/login_parameters.dart';
import '../../../domain/parameters/register_parameters.dart';
import '../../models/user_model.dart';
import 'auth_datasource.dart';

@LazySingleton(as: AuthDataSource)
class AuthRemoteDataSourceImp implements AuthDataSource {
  final ApiServices _apiServices;

  AuthRemoteDataSourceImp(this._apiServices);

  @override
  Future<UserModel> login(LoginParameters parameters) async {
    AppResponse response = await _apiServices.post(
      ApisUrls.login,
      data: parameters.toJson(),
    );
    return UserModel.fromJson(response.data);
  }

  @override
  Future<UserModel> register(RegisterParameters parameters) async {
    AppResponse response = await _apiServices.post(
      ApisUrls.register,
      data: parameters.toJson(),
    );
    return UserModel.fromJson(response.data);
  }

  @override
  Future<CheckEmailModel> checkEmail(CheckEmailParameters parameters) async {
    AppResponse response = await _apiServices.post(
      ApisUrls.checkEmail,
      data: parameters.toJson(),
    );
    return CheckEmailModel.fromJson(response.data);
  }
}
