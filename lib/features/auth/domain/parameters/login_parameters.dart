import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/shared/constants/app_constants.dart';

part 'login_parameters.freezed.dart';
part 'login_parameters.g.dart';

@freezed
abstract class LoginParameters with _$LoginParameters {
  const LoginParameters._();

  const factory LoginParameters({
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'password') required String password,
    @JsonKey(name: 'clientId') @Default(AppConstants.clientId) int clientId,
  }) = _LoginParameters;

  factory LoginParameters.fromJson(Map<String, dynamic> json) =>
      _$LoginParametersFromJson(json);
}
