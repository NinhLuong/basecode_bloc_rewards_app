import 'package:injectable/injectable.dart';
import 'package:magic_rewards/config/secret/api/apis_urls.dart';
import 'package:magic_rewards/core/data/datasources/remote/api/api_services.dart';
import 'package:magic_rewards/core/data/repositories/app_response.dart';
import 'package:magic_rewards/features/rewards/data/datasources/rewards_datasource.dart';
import 'package:magic_rewards/features/rewards/data/models/orders_model.dart';
import 'package:magic_rewards/features/rewards/data/models/payouts_model.dart';
import 'package:magic_rewards/features/rewards/data/models/transactions_model.dart';
import 'package:magic_rewards/features/rewards/domain/parameters/orders_parameters.dart';
import 'package:magic_rewards/features/rewards/domain/parameters/payouts_parameters.dart';
import 'package:magic_rewards/features/rewards/domain/parameters/redeem_parameters.dart';
import 'package:magic_rewards/features/rewards/domain/parameters/transactions_parameters.dart';

@LazySingleton(as: RewardsDataSource)
class RewardsRemoteDataSourceImp extends RewardsDataSource {
  final ApiServices _apiServices;

  RewardsRemoteDataSourceImp(this._apiServices);

  @override
  Future<PayoutsModel> getPayouts(PayoutsParameters parameters) async {
    AppResponse appResponse =
        await _apiServices.post(ApisUrls.payouts, data: parameters.toJson());
    return PayoutsModel.fromJson(appResponse.data);
  }

  @override
  Future<void> redeem(RedeemParameters parameters) async {
    await _apiServices.post(ApisUrls.redeem, data: parameters.toJson());
  }

  @override
  Future<OrdersModel> getOrders(OrdersParameters parameters) async {
    AppResponse appResponse =
        await _apiServices.post(ApisUrls.orders, data: parameters.toJson());
    return OrdersModel.fromJson(appResponse.data);
  }

  @override
  Future<TransactionsModel> getTransactions(
      TransactionsParameters parameters) async {
    AppResponse appResponse = await _apiServices
        .post(ApisUrls.transactions, data: parameters.toJson());
    return TransactionsModel.fromJson(appResponse.data);
  }
}
