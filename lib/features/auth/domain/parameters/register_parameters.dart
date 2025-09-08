import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:magic_rewards/shared/constants/app_constants.dart';

part 'register_parameters.g.dart';

@immutable
@JsonSerializable()
class RegisterParameters extends Equatable {
  @JsonKey(name: 'username')
  final String userName;
  
  @JsonKey(name: 'password')
  final String password;
  
  @JsonKey(name: 'fullname')
  final String fullName;
  
  @JsonKey(name: 'email')
  final String email;
  
  @JsonKey(name: 'groupEmail')
  final String groupEmail;
  
  @JsonKey(name: 'reg')
  final String reg;
  
  @JsonKey(name: 'clientId')
  final int clientId;

  const RegisterParameters({
    required this.email,
    required this.userName,
    required this.fullName,
    required this.password,
    required this.groupEmail,
    String? reg,
    int? clientId,
  }) : reg = reg ?? AppConstants.reg,
       clientId = clientId ?? AppConstants.clientId;

  factory RegisterParameters.fromJson(Map<String, dynamic> json) => 
      _$RegisterParametersFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterParametersToJson(this);

  @override
  List<Object> get props =>
      [userName, password, email, fullName, reg, clientId, groupEmail];
}
