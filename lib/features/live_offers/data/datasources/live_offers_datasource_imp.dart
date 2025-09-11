import 'package:injectable/injectable.dart';
import 'package:magic_rewards/config/secret/api/apis_urls.dart';
import 'package:magic_rewards/core/data/datasources/remote/api/api_services.dart';
import 'package:magic_rewards/core/data/repositories/app_response.dart';
import 'package:magic_rewards/features/live_offers/data/datasources/live_offers_datasource.dart';
import 'package:magic_rewards/features/live_offers/data/models/live_offers_model.dart';
import 'package:magic_rewards/features/live_offers/domain/parameters/live_offers_parameters.dart';

@LazySingleton(as: LiveOffersDataSource)
class LiveOffersRemoteDataSourceImp extends LiveOffersDataSource {
  final ApiServices _apiServices;

  LiveOffersRemoteDataSourceImp(this._apiServices);

  @override
  Future<LiveOffersModel> getLiveOffers(
      GetLiveOffersParameters parameters) async {
    AppResponse appResponse = await _apiServices
        .post(ApisUrls.liveOffers, data: parameters.toJson());
    return LiveOffersModel.fromJson(appResponse.data);
  }
}
