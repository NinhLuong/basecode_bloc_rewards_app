import 'package:magic_rewards/features/auth/domain/entities/user_entity.dart';

/// Abstract class for local data source operations related to user data
abstract class UserLocalDataSource {
  /// Saves user data to local storage after successful authentication
  Future<void> saveUserData(UserEntity user);
}
