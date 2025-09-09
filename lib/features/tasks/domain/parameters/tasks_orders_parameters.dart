import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/shared/constants/app_constants.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';

part 'tasks_orders_parameters.freezed.dart';
part 'tasks_orders_parameters.g.dart';

@freezed
abstract class TasksOrdersParameters with _$TasksOrdersParameters {
  const TasksOrdersParameters._();

  const factory TasksOrdersParameters({
    @JsonKey(name: 'accessToken') required String accessToken,
    @JsonKey(name: 'accountId') required String accountId,
    @JsonKey(name: 'user') required String username,
    @JsonKey(name: 'clientId') required int clientId,
  }) = _TasksOrdersParameters;

  factory TasksOrdersParameters.create() => TasksOrdersParameters(
    accessToken: CacheStorageServices().token,
    accountId: CacheStorageServices().accountId,
    username: CacheStorageServices().username,
    clientId: AppConstants.clientId,
  );

  factory TasksOrdersParameters.fromJson(Map<String, dynamic> json) =>
      _$TasksOrdersParametersFromJson(json);
}
