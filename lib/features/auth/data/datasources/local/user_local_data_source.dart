import 'package:bloc_rewards/core/data/datasources/local/cache/cache_storage_services.dart';
import 'package:bloc_rewards/features/auth/domain/entities/user_entity.dart';
import 'package:injectable/injectable.dart';

/// Abstract class for local data source operations related to user data
abstract class UserLocalDataSource {
  /// Saves user data to local storage after successful authentication
  Future<void> saveUserData(UserEntity user);
  
  /// Gets user data from local storage
  Future<UserEntity?> getUserData();

}

/// Implementation of UserLocalDataSource using CacheStorageServices
@LazySingleton(as: UserLocalDataSource)
class UserLocalDataSourceImpl implements UserLocalDataSource {
  final CacheStorageServices _cacheStorageServices;

  UserLocalDataSourceImpl(this._cacheStorageServices);

  @override
  Future<void> saveUserData(UserEntity user) async {
    if (user.accessToken != null) {
      await _cacheStorageServices.setAccessToken(user.accessToken!);
    }
    await _cacheStorageServices.setUserName(user.userName);
    await _cacheStorageServices.setFullName(user.fullName);
    await _cacheStorageServices.setAccountId(user.accountId);
    await _cacheStorageServices.setEmail(user.email);
  }

  @override
  Future<UserEntity?> getUserData() async {
    // Check if user data exists in cache
    if (!_cacheStorageServices.hasToken) {
      return null;
    }

    // Construct UserEntity from cached data
    return UserEntity(
      accessToken: _cacheStorageServices.accessToken != 'no accessToken' 
          ? _cacheStorageServices.accessToken 
          : null,
      accountId: _cacheStorageServices.accountId,
      userName: _cacheStorageServices.username,
      email: _cacheStorageServices.email,
      fullName: _cacheStorageServices.fullname,
      points: '0', // Points are not stored in cache, will be fetched from server
      redeemedPoints: '0', // Same for redeemed points
    );
  }

}
