import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/shared/constants/app_constants.dart';

part 'check_email_parameters.freezed.dart';
part 'check_email_parameters.g.dart';

@freezed
abstract class CheckEmailParameters with _$CheckEmailParameters {
  const CheckEmailParameters._();
  
  const factory CheckEmailParameters({
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'clientId') @Default(AppConstants.clientId) int clientId,
  }) = _CheckEmailParameters;

  factory CheckEmailParameters.fromJson(Map<String, dynamic> json) =>
      _$CheckEmailParametersFromJson(json);
}
