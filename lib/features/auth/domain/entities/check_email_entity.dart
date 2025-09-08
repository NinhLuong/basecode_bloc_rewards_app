import 'package:magic_rewards/core/domain/entities/base_entity.dart';

class CheckEmailEntity extends BaseEntity {
  final String? verifyCode;

  const CheckEmailEntity({required this.verifyCode});

  @override
  List<Object?> get props => [verifyCode];
}
