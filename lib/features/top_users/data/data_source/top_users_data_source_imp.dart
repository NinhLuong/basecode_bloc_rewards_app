import 'package:injectable/injectable.dart';
import 'package:magic_rewards/config/secret/api/apis_urls.dart';
import 'package:magic_rewards/core/data/datasources/remote/api/api_services.dart';
import 'package:magic_rewards/core/data/repositories/app_response.dart';
import 'package:magic_rewards/features/top_users/data/data_source/top_users_data_source.dart';
import 'package:magic_rewards/features/top_users/data/models/top_users_model.dart';
import 'package:magic_rewards/features/top_users/domain/parameters/top_users_parameters.dart';

@LazySingleton(as: TopUsersDataSource)
class TopUsersRemoteDataSourceImp extends TopUsersDataSource {
  @override
  Future<TopUsersModel> getTopUsers(TopUsersParameters parameters) async {
    AppResponse appResponse =
        await ApiServices().post(ApisUrls.topUsers, data: parameters.toJson());
    return TopUsersModel.fromJson(appResponse.data);
  }
}
