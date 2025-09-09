import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/shared/constants/app_constants.dart';

part 'register_parameters.freezed.dart';
part 'register_parameters.g.dart';

@freezed
abstract class RegisterParameters with _$RegisterParameters {
  const RegisterParameters._();

  const factory RegisterParameters({
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'username') required String userName,
    @JsonKey(name: 'fullname') required String fullName,
    @JsonKey(name: 'password') required String password,
    @JsonKey(name: 'groupEmail') required String groupEmail,
    @JsonKey(name: 'reg') @Default(AppConstants.reg) String reg,
    @JsonKey(name: 'clientId') @Default(AppConstants.clientId) int clientId,
  }) = _RegisterParameters;

  factory RegisterParameters.fromJson(Map<String, dynamic> json) =>
      _$RegisterParametersFromJson(json);
}
