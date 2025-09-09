import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/shared/constants/app_constants.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';

part 'tasks_parameters.freezed.dart';
part 'tasks_parameters.g.dart';

@freezed
abstract class TasksParameters with _$TasksParameters {
  const TasksParameters._();

  const factory TasksParameters({
    @JsonKey(name: 'accessToken') required String accessToken,
    @JsonKey(name: 'accountId') required String accountId,
    @JsonKey(name: 'user') required String username,
    @JsonKey(name: 'clientId') required int clientId,
  }) = _TasksParameters;

  factory TasksParameters.create({
    String? accessToken,
    String? accountId,
    String? username,
    int? clientId,
  }) => TasksParameters(
    accessToken: accessToken ?? CacheStorageServices().token,
    accountId: accountId ?? CacheStorageServices().accountId,
    username: username ?? CacheStorageServices().username,
    clientId: clientId ?? AppConstants.clientId,
  );

  factory TasksParameters.fromJson(Map<String, dynamic> json) =>
      _$TasksParametersFromJson(json);
}
