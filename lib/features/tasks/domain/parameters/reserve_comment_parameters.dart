import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/shared/constants/app_constants.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';

part 'reserve_comment_parameters.freezed.dart';
part 'reserve_comment_parameters.g.dart';

@freezed
abstract class ReserveCommentParameters with _$ReserveCommentParameters {
  const ReserveCommentParameters._();

  const factory ReserveCommentParameters({
    required String accessToken,
    required String accountId,
    required String username,
    required int clientId,
    required String taskId,
  }) = _ReserveCommentParameters;

  factory ReserveCommentParameters.create({
    required String taskId,
  }) => ReserveCommentParameters(
    accessToken: CacheStorageServices().token,
    accountId: CacheStorageServices().accountId,
    username: CacheStorageServices().username,
    clientId: AppConstants.clientId,
    taskId: taskId,
  );

  factory ReserveCommentParameters.fromJson(Map<String, dynamic> json) =>
      _$ReserveCommentParametersFromJson(json);
}
