import 'package:bloc_rewards/core/data/datasources/local/cache/cache_storage_services.dart';
import 'package:bloc_rewards/shared/constants/app_constants.dart';
import 'package:equatable/equatable.dart';

class TasksOrdersParameters extends Equatable {
  final String accessToken = CacheStorageServices().accessToken;
  final String accountId = CacheStorageServices().accountId;
  final String username = CacheStorageServices().username;
  final int clientId = AppConstants.clientId;

  TasksOrdersParameters();

  Map<String, dynamic> toJson() => {
        'accessToken': accessToken,
        'accountId': accountId,
        'user': username,
        'clientId': clientId
      };

  @override
  List<Object> get props => [username];
}
