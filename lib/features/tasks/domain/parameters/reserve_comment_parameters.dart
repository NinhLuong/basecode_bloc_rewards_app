import 'package:bloc_rewards/core/data/datasources/local/cache/cache_storage_services.dart';
import 'package:bloc_rewards/shared/constants/app_constants.dart';
import 'package:equatable/equatable.dart';

class ReserveCommentParameters extends Equatable {
  final String accessToken = CacheStorageServices().accessToken;
  final String accountId = CacheStorageServices().accountId;
  final String username = CacheStorageServices().username;
  final String taskId;
  final int clientId = AppConstants.clientId;

  ReserveCommentParameters({required this.taskId});

  Map<String, dynamic> toJson() => {
        'accessToken': accessToken,
        'accountId': accountId,
        'user': username,
        'clientId': clientId,
        'taskId': taskId
      };

  @override
  List<Object> get props => [username, taskId];
}
