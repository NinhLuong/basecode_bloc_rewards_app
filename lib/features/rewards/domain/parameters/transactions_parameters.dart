import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/shared/constants/app_constants.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';

part 'transactions_parameters.freezed.dart';
part 'transactions_parameters.g.dart';

@freezed
abstract class TransactionsParameters with _$TransactionsParameters {
  const TransactionsParameters._();

  const factory TransactionsParameters({
    @JsonKey(name: 'clientId') required int clientId,
    @JsonKey(name: 'accountId') required String accountId,
    @JsonKey(name: 'accessToken') required String accessToken,
    @JsonKey(name: 'user') required String username,
  }) = _TransactionsParameters;

  factory TransactionsParameters.create({
    int? clientId,
    String? accountId,
    String? accessToken,
    String? username,
  }) => TransactionsParameters(
    clientId: clientId ?? AppConstants.clientId,
    accountId: accountId ?? CacheStorageServices().accountId,
    accessToken: accessToken ?? CacheStorageServices().token,
    username: username ?? CacheStorageServices().username,
  );

  factory TransactionsParameters.fromJson(Map<String, dynamic> json) =>
      _$TransactionsParametersFromJson(json);
}
