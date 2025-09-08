import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:magic_rewards/shared/constants/app_constants.dart';

part 'login_parameters.g.dart';

@JsonSerializable()
class LoginParameters extends Equatable {
  @JsonKey(name: 'username')
  final String username;
  
  @JsonKey(name: 'password')
  final String password;
  
  @JsonKey(name: 'clientId')
  final int clientId;

  const LoginParameters({
    required this.username,
    required this.password,
    int? clientId,
  }) : clientId = clientId ?? AppConstants.clientId;

  Map<String, dynamic> toJson() => _$LoginParametersToJson(this);

  @override
  List<Object> get props => [clientId, username, password];
}
