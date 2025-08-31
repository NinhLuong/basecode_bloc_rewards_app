import 'package:magic_rewards/config/secret/api/apis_urls.dart';
import 'package:magic_rewards/core/data/datasources/remote/api/api_services.dart';
import 'package:magic_rewards/core/data/repositories/app_response.dart';
import 'package:magic_rewards/features/home/data/data_source/home_data_source.dart';
import 'package:magic_rewards/features/home/data/models/home_model.dart';
import 'package:magic_rewards/features/home/domin/parameters/home_parameters.dart';

class HomeRemoteDataSourceImp extends HomeDataSource {
  @override
  Future<HomeModel> getHome(HomeParameters parameters) async {
    AppResponse appResponse =
        await ApiServices().post(ApisUrls.home, data: parameters.toJson());
    return HomeModel.fromJson(appResponse.data);
  }
}
