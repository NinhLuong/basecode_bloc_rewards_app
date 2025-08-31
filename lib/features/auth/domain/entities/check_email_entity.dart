import 'package:magic_rewards/core/models/entities/base_entity.dart';

class CheckEmailEntity extends BaseEntity {
  final String? verifyCode;

  CheckEmailEntity({required this.verifyCode});

  @override
  List<Object?> get props => [verifyCode];
}
