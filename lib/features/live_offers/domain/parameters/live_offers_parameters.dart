import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/shared/constants/app_constants.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';

part 'live_offers_parameters.freezed.dart';
part 'live_offers_parameters.g.dart';

@freezed
abstract class GetLiveOffersParameters with _$GetLiveOffersParameters {
  const GetLiveOffersParameters._();

  const factory GetLiveOffersParameters({
    @JsonKey(name: 'accessToken') required String accessToken,
    @JsonKey(name: 'accountId') required String accountId,
    @JsonKey(name: 'user') required String username,
    @JsonKey(name: 'clientId') required int clientId,
    @JsonKey(name: 'page') required int page,
    @JsonKey(name: 'length') required int length,
  }) = _GetLiveOffersParameters;

  factory GetLiveOffersParameters.create({
    required int page,
    required int length,
    String? accessToken,
    String? accountId,
    String? username,
    int? clientId,
  }) => GetLiveOffersParameters(
    page: page,
    length: length,
    accessToken: accessToken ?? CacheStorageServices().token,
    accountId: accountId ?? CacheStorageServices().accountId,
    username: username ?? CacheStorageServices().username,
    clientId: clientId ?? AppConstants.clientId,
  );

  factory GetLiveOffersParameters.fromJson(Map<String, dynamic> json) =>
      _$GetLiveOffersParametersFromJson(json);
}
