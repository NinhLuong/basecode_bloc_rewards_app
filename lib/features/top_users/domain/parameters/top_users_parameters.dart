import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/shared/constants/app_constants.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';

part 'top_users_parameters.freezed.dart';
part 'top_users_parameters.g.dart';

@freezed
abstract class TopUsersParameters with _$TopUsersParameters {
  const TopUsersParameters._();

  const factory TopUsersParameters({
    @JsonKey(name: 'accessToken') required String accessToken,
    @JsonKey(name: 'accountId') required String accountId,
    @JsonKey(name: 'user') required String username,
    @JsonKey(name: 'clientId') required int clientId,
    @JsonKey(name: 'half_month') required int halfMonthValue,
  }) = _TopUsersParameters;

  bool get halfMonth => halfMonthValue == 1;

  factory TopUsersParameters.create({
    String? accessToken,
    String? accountId,
    String? username,
    int? clientId,
    bool halfMonth = false,
  }) => TopUsersParameters(
    accessToken: accessToken ?? CacheStorageServices().token,
    accountId: accountId ?? CacheStorageServices().accountId,
    username: username ?? CacheStorageServices().username,
    clientId: clientId ?? AppConstants.clientId,
    halfMonthValue: halfMonth ? 1 : 0,
  );

  factory TopUsersParameters.fromJson(Map<String, dynamic> json) =>
      _$TopUsersParametersFromJson(json);
}
