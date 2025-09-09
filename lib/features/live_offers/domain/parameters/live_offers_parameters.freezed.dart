// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'live_offers_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetLiveOffersParameters {

@JsonKey(name: 'accessToken') String get accessToken;@JsonKey(name: 'accountId') String get accountId;@JsonKey(name: 'user') String get username;@JsonKey(name: 'clientId') int get clientId;@JsonKey(name: 'page') int get page;@JsonKey(name: 'length') int get length;
/// Create a copy of GetLiveOffersParameters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetLiveOffersParametersCopyWith<GetLiveOffersParameters> get copyWith => _$GetLiveOffersParametersCopyWithImpl<GetLiveOffersParameters>(this as GetLiveOffersParameters, _$identity);

  /// Serializes this GetLiveOffersParameters to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetLiveOffersParameters&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.username, username) || other.username == username)&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.page, page) || other.page == page)&&(identical(other.length, length) || other.length == length));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,accountId,username,clientId,page,length);

@override
String toString() {
  return 'GetLiveOffersParameters(accessToken: $accessToken, accountId: $accountId, username: $username, clientId: $clientId, page: $page, length: $length)';
}


}

/// @nodoc
abstract mixin class $GetLiveOffersParametersCopyWith<$Res>  {
  factory $GetLiveOffersParametersCopyWith(GetLiveOffersParameters value, $Res Function(GetLiveOffersParameters) _then) = _$GetLiveOffersParametersCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'accessToken') String accessToken,@JsonKey(name: 'accountId') String accountId,@JsonKey(name: 'user') String username,@JsonKey(name: 'clientId') int clientId,@JsonKey(name: 'page') int page,@JsonKey(name: 'length') int length
});




}
/// @nodoc
class _$GetLiveOffersParametersCopyWithImpl<$Res>
    implements $GetLiveOffersParametersCopyWith<$Res> {
  _$GetLiveOffersParametersCopyWithImpl(this._self, this._then);

  final GetLiveOffersParameters _self;
  final $Res Function(GetLiveOffersParameters) _then;

/// Create a copy of GetLiveOffersParameters
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? accountId = null,Object? username = null,Object? clientId = null,Object? page = null,Object? length = null,}) {
  return _then(_self.copyWith(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GetLiveOffersParameters].
extension GetLiveOffersParametersPatterns on GetLiveOffersParameters {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetLiveOffersParameters value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetLiveOffersParameters() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetLiveOffersParameters value)  $default,){
final _that = this;
switch (_that) {
case _GetLiveOffersParameters():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetLiveOffersParameters value)?  $default,){
final _that = this;
switch (_that) {
case _GetLiveOffersParameters() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'accessToken')  String accessToken, @JsonKey(name: 'accountId')  String accountId, @JsonKey(name: 'user')  String username, @JsonKey(name: 'clientId')  int clientId, @JsonKey(name: 'page')  int page, @JsonKey(name: 'length')  int length)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetLiveOffersParameters() when $default != null:
return $default(_that.accessToken,_that.accountId,_that.username,_that.clientId,_that.page,_that.length);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'accessToken')  String accessToken, @JsonKey(name: 'accountId')  String accountId, @JsonKey(name: 'user')  String username, @JsonKey(name: 'clientId')  int clientId, @JsonKey(name: 'page')  int page, @JsonKey(name: 'length')  int length)  $default,) {final _that = this;
switch (_that) {
case _GetLiveOffersParameters():
return $default(_that.accessToken,_that.accountId,_that.username,_that.clientId,_that.page,_that.length);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'accessToken')  String accessToken, @JsonKey(name: 'accountId')  String accountId, @JsonKey(name: 'user')  String username, @JsonKey(name: 'clientId')  int clientId, @JsonKey(name: 'page')  int page, @JsonKey(name: 'length')  int length)?  $default,) {final _that = this;
switch (_that) {
case _GetLiveOffersParameters() when $default != null:
return $default(_that.accessToken,_that.accountId,_that.username,_that.clientId,_that.page,_that.length);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetLiveOffersParameters extends GetLiveOffersParameters {
  const _GetLiveOffersParameters({@JsonKey(name: 'accessToken') required this.accessToken, @JsonKey(name: 'accountId') required this.accountId, @JsonKey(name: 'user') required this.username, @JsonKey(name: 'clientId') required this.clientId, @JsonKey(name: 'page') required this.page, @JsonKey(name: 'length') required this.length}): super._();
  factory _GetLiveOffersParameters.fromJson(Map<String, dynamic> json) => _$GetLiveOffersParametersFromJson(json);

@override@JsonKey(name: 'accessToken') final  String accessToken;
@override@JsonKey(name: 'accountId') final  String accountId;
@override@JsonKey(name: 'user') final  String username;
@override@JsonKey(name: 'clientId') final  int clientId;
@override@JsonKey(name: 'page') final  int page;
@override@JsonKey(name: 'length') final  int length;

/// Create a copy of GetLiveOffersParameters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetLiveOffersParametersCopyWith<_GetLiveOffersParameters> get copyWith => __$GetLiveOffersParametersCopyWithImpl<_GetLiveOffersParameters>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetLiveOffersParametersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetLiveOffersParameters&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.username, username) || other.username == username)&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.page, page) || other.page == page)&&(identical(other.length, length) || other.length == length));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,accountId,username,clientId,page,length);

@override
String toString() {
  return 'GetLiveOffersParameters(accessToken: $accessToken, accountId: $accountId, username: $username, clientId: $clientId, page: $page, length: $length)';
}


}

/// @nodoc
abstract mixin class _$GetLiveOffersParametersCopyWith<$Res> implements $GetLiveOffersParametersCopyWith<$Res> {
  factory _$GetLiveOffersParametersCopyWith(_GetLiveOffersParameters value, $Res Function(_GetLiveOffersParameters) _then) = __$GetLiveOffersParametersCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'accessToken') String accessToken,@JsonKey(name: 'accountId') String accountId,@JsonKey(name: 'user') String username,@JsonKey(name: 'clientId') int clientId,@JsonKey(name: 'page') int page,@JsonKey(name: 'length') int length
});




}
/// @nodoc
class __$GetLiveOffersParametersCopyWithImpl<$Res>
    implements _$GetLiveOffersParametersCopyWith<$Res> {
  __$GetLiveOffersParametersCopyWithImpl(this._self, this._then);

  final _GetLiveOffersParameters _self;
  final $Res Function(_GetLiveOffersParameters) _then;

/// Create a copy of GetLiveOffersParameters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? accountId = null,Object? username = null,Object? clientId = null,Object? page = null,Object? length = null,}) {
  return _then(_GetLiveOffersParameters(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
