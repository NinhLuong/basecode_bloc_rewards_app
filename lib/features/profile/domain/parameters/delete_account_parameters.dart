import 'package:equatable/equatable.dart';
import 'package:magic_rewards/shared/constants/app_constants.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';

class DeleteAccountParameters extends Equatable {
  final String accessToken = CacheStorageServices().token;
  final String accountId = CacheStorageServices().accountId;
  final int clientId = AppConstants.clientId;

  DeleteAccountParameters();

  Map<String, dynamic> toJson() => {
        'accessToken': accessToken,
        'accountId': accountId,
        'clientId': clientId
      };

  @override
  List<Object> get props => [accessToken, accountId, clientId];
}
