// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterParameters {

@JsonKey(name: 'email') String get email;@JsonKey(name: 'username') String get userName;@JsonKey(name: 'fullname') String get fullName;@JsonKey(name: 'password') String get password;@JsonKey(name: 'groupEmail') String get groupEmail;@JsonKey(name: 'reg') String get reg;@JsonKey(name: 'clientId') int get clientId;
/// Create a copy of RegisterParameters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterParametersCopyWith<RegisterParameters> get copyWith => _$RegisterParametersCopyWithImpl<RegisterParameters>(this as RegisterParameters, _$identity);

  /// Serializes this RegisterParameters to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterParameters&&(identical(other.email, email) || other.email == email)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.password, password) || other.password == password)&&(identical(other.groupEmail, groupEmail) || other.groupEmail == groupEmail)&&(identical(other.reg, reg) || other.reg == reg)&&(identical(other.clientId, clientId) || other.clientId == clientId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,userName,fullName,password,groupEmail,reg,clientId);

@override
String toString() {
  return 'RegisterParameters(email: $email, userName: $userName, fullName: $fullName, password: $password, groupEmail: $groupEmail, reg: $reg, clientId: $clientId)';
}


}

/// @nodoc
abstract mixin class $RegisterParametersCopyWith<$Res>  {
  factory $RegisterParametersCopyWith(RegisterParameters value, $Res Function(RegisterParameters) _then) = _$RegisterParametersCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'email') String email,@JsonKey(name: 'username') String userName,@JsonKey(name: 'fullname') String fullName,@JsonKey(name: 'password') String password,@JsonKey(name: 'groupEmail') String groupEmail,@JsonKey(name: 'reg') String reg,@JsonKey(name: 'clientId') int clientId
});




}
/// @nodoc
class _$RegisterParametersCopyWithImpl<$Res>
    implements $RegisterParametersCopyWith<$Res> {
  _$RegisterParametersCopyWithImpl(this._self, this._then);

  final RegisterParameters _self;
  final $Res Function(RegisterParameters) _then;

/// Create a copy of RegisterParameters
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? userName = null,Object? fullName = null,Object? password = null,Object? groupEmail = null,Object? reg = null,Object? clientId = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,groupEmail: null == groupEmail ? _self.groupEmail : groupEmail // ignore: cast_nullable_to_non_nullable
as String,reg: null == reg ? _self.reg : reg // ignore: cast_nullable_to_non_nullable
as String,clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RegisterParameters].
extension RegisterParametersPatterns on RegisterParameters {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterParameters value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterParameters() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterParameters value)  $default,){
final _that = this;
switch (_that) {
case _RegisterParameters():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterParameters value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterParameters() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'email')  String email, @JsonKey(name: 'username')  String userName, @JsonKey(name: 'fullname')  String fullName, @JsonKey(name: 'password')  String password, @JsonKey(name: 'groupEmail')  String groupEmail, @JsonKey(name: 'reg')  String reg, @JsonKey(name: 'clientId')  int clientId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterParameters() when $default != null:
return $default(_that.email,_that.userName,_that.fullName,_that.password,_that.groupEmail,_that.reg,_that.clientId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'email')  String email, @JsonKey(name: 'username')  String userName, @JsonKey(name: 'fullname')  String fullName, @JsonKey(name: 'password')  String password, @JsonKey(name: 'groupEmail')  String groupEmail, @JsonKey(name: 'reg')  String reg, @JsonKey(name: 'clientId')  int clientId)  $default,) {final _that = this;
switch (_that) {
case _RegisterParameters():
return $default(_that.email,_that.userName,_that.fullName,_that.password,_that.groupEmail,_that.reg,_that.clientId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'email')  String email, @JsonKey(name: 'username')  String userName, @JsonKey(name: 'fullname')  String fullName, @JsonKey(name: 'password')  String password, @JsonKey(name: 'groupEmail')  String groupEmail, @JsonKey(name: 'reg')  String reg, @JsonKey(name: 'clientId')  int clientId)?  $default,) {final _that = this;
switch (_that) {
case _RegisterParameters() when $default != null:
return $default(_that.email,_that.userName,_that.fullName,_that.password,_that.groupEmail,_that.reg,_that.clientId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegisterParameters extends RegisterParameters {
  const _RegisterParameters({@JsonKey(name: 'email') required this.email, @JsonKey(name: 'username') required this.userName, @JsonKey(name: 'fullname') required this.fullName, @JsonKey(name: 'password') required this.password, @JsonKey(name: 'groupEmail') required this.groupEmail, @JsonKey(name: 'reg') this.reg = AppConstants.reg, @JsonKey(name: 'clientId') this.clientId = AppConstants.clientId}): super._();
  factory _RegisterParameters.fromJson(Map<String, dynamic> json) => _$RegisterParametersFromJson(json);

@override@JsonKey(name: 'email') final  String email;
@override@JsonKey(name: 'username') final  String userName;
@override@JsonKey(name: 'fullname') final  String fullName;
@override@JsonKey(name: 'password') final  String password;
@override@JsonKey(name: 'groupEmail') final  String groupEmail;
@override@JsonKey(name: 'reg') final  String reg;
@override@JsonKey(name: 'clientId') final  int clientId;

/// Create a copy of RegisterParameters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterParametersCopyWith<_RegisterParameters> get copyWith => __$RegisterParametersCopyWithImpl<_RegisterParameters>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegisterParametersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterParameters&&(identical(other.email, email) || other.email == email)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.password, password) || other.password == password)&&(identical(other.groupEmail, groupEmail) || other.groupEmail == groupEmail)&&(identical(other.reg, reg) || other.reg == reg)&&(identical(other.clientId, clientId) || other.clientId == clientId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,userName,fullName,password,groupEmail,reg,clientId);

@override
String toString() {
  return 'RegisterParameters(email: $email, userName: $userName, fullName: $fullName, password: $password, groupEmail: $groupEmail, reg: $reg, clientId: $clientId)';
}


}

/// @nodoc
abstract mixin class _$RegisterParametersCopyWith<$Res> implements $RegisterParametersCopyWith<$Res> {
  factory _$RegisterParametersCopyWith(_RegisterParameters value, $Res Function(_RegisterParameters) _then) = __$RegisterParametersCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'email') String email,@JsonKey(name: 'username') String userName,@JsonKey(name: 'fullname') String fullName,@JsonKey(name: 'password') String password,@JsonKey(name: 'groupEmail') String groupEmail,@JsonKey(name: 'reg') String reg,@JsonKey(name: 'clientId') int clientId
});




}
/// @nodoc
class __$RegisterParametersCopyWithImpl<$Res>
    implements _$RegisterParametersCopyWith<$Res> {
  __$RegisterParametersCopyWithImpl(this._self, this._then);

  final _RegisterParameters _self;
  final $Res Function(_RegisterParameters) _then;

/// Create a copy of RegisterParameters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? userName = null,Object? fullName = null,Object? password = null,Object? groupEmail = null,Object? reg = null,Object? clientId = null,}) {
  return _then(_RegisterParameters(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,groupEmail: null == groupEmail ? _self.groupEmail : groupEmail // ignore: cast_nullable_to_non_nullable
as String,reg: null == reg ? _self.reg : reg // ignore: cast_nullable_to_non_nullable
as String,clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
