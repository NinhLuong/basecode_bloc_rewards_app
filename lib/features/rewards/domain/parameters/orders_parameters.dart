import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/shared/constants/app_constants.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';

part 'orders_parameters.freezed.dart';
part 'orders_parameters.g.dart';

@freezed
abstract class OrdersParameters with _$OrdersParameters {
  const OrdersParameters._();

  const factory OrdersParameters({
    @JsonKey(name: 'clientId') required int clientId,
    @JsonKey(name: 'accountId') required String accountId,
    @JsonKey(name: 'accessToken') required String accessToken,
    @JsonKey(name: 'user') required String username,
  }) = _OrdersParameters;

  factory OrdersParameters.create({
    int? clientId,
    String? accountId,
    String? accessToken,
    String? username,
  }) => OrdersParameters(
    clientId: clientId ?? AppConstants.clientId,
    accountId: accountId ?? CacheStorageServices().accountId,
    accessToken: accessToken ?? CacheStorageServices().token,
    username: username ?? CacheStorageServices().username,
  );

  factory OrdersParameters.fromJson(Map<String, dynamic> json) =>
      _$OrdersParametersFromJson(json);
}
