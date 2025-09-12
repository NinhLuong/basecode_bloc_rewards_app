import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/core/domain/entities/base_entity.dart';
import 'package:magic_rewards/features/home/domain/entities/home_entity.dart';
import 'package:magic_rewards/features/auth/domain/entities/user_entity.dart';

part 'home_with_user_entity.freezed.dart';

@freezed
abstract class HomeWithUserEntity extends BaseEntity with _$HomeWithUserEntity {
  const HomeWithUserEntity._();
  
  const factory HomeWithUserEntity({
    required HomeEntity homeData,
    required UserEntity userData,
  }) = _HomeWithUserEntity;

  // Convenience getters for easy access to nested data
  String get balance => homeData.balance;
  List<OfferWallEntity> get offerWalls => homeData.offerWalls;
  
  String get username => userData.userName;
  String get fullName => userData.fullName;
  String get email => userData.email;
  String get points => userData.points;
  String get redeemedPoints => userData.redeemedPoints;
  String? get accessToken => userData.accessToken;
  String get accountId => userData.accountId;
}
