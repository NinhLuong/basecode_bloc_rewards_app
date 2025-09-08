import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:magic_rewards/shared/constants/app_constants.dart';

part 'check_email_parameters.g.dart';

@JsonSerializable()
class CheckEmailParameters extends Equatable {
  @JsonKey(name: 'email')
  final String email;
  
  @JsonKey(name: 'clientId')
  final int clientId;

  const CheckEmailParameters({
    required this.email,
    int? clientId,
  }) : clientId = clientId ?? AppConstants.clientId;

  Map<String, dynamic> toJson() => _$CheckEmailParametersToJson(this);

  @override
  List<Object> get props => [clientId, email];
}
