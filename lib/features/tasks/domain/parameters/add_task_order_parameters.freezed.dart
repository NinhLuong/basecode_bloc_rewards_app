// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_task_order_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddTaskOrderParameters {

 String get accessToken; String get accountId; String get username; int get clientId; String get taskId; String get commentId; String get name; String get url; String get email; String get text; File get image; DateTime get timeStamp;
/// Create a copy of AddTaskOrderParameters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddTaskOrderParametersCopyWith<AddTaskOrderParameters> get copyWith => _$AddTaskOrderParametersCopyWithImpl<AddTaskOrderParameters>(this as AddTaskOrderParameters, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddTaskOrderParameters&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.username, username) || other.username == username)&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.taskId, taskId) || other.taskId == taskId)&&(identical(other.commentId, commentId) || other.commentId == commentId)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.email, email) || other.email == email)&&(identical(other.text, text) || other.text == text)&&(identical(other.image, image) || other.image == image)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp));
}


@override
int get hashCode => Object.hash(runtimeType,accessToken,accountId,username,clientId,taskId,commentId,name,url,email,text,image,timeStamp);

@override
String toString() {
  return 'AddTaskOrderParameters(accessToken: $accessToken, accountId: $accountId, username: $username, clientId: $clientId, taskId: $taskId, commentId: $commentId, name: $name, url: $url, email: $email, text: $text, image: $image, timeStamp: $timeStamp)';
}


}

/// @nodoc
abstract mixin class $AddTaskOrderParametersCopyWith<$Res>  {
  factory $AddTaskOrderParametersCopyWith(AddTaskOrderParameters value, $Res Function(AddTaskOrderParameters) _then) = _$AddTaskOrderParametersCopyWithImpl;
@useResult
$Res call({
 String accessToken, String accountId, String username, int clientId, String taskId, String commentId, String name, String url, String email, String text, File image, DateTime timeStamp
});




}
/// @nodoc
class _$AddTaskOrderParametersCopyWithImpl<$Res>
    implements $AddTaskOrderParametersCopyWith<$Res> {
  _$AddTaskOrderParametersCopyWithImpl(this._self, this._then);

  final AddTaskOrderParameters _self;
  final $Res Function(AddTaskOrderParameters) _then;

/// Create a copy of AddTaskOrderParameters
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? accountId = null,Object? username = null,Object? clientId = null,Object? taskId = null,Object? commentId = null,Object? name = null,Object? url = null,Object? email = null,Object? text = null,Object? image = null,Object? timeStamp = null,}) {
  return _then(_self.copyWith(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as int,taskId: null == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String,commentId: null == commentId ? _self.commentId : commentId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as File,timeStamp: null == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [AddTaskOrderParameters].
extension AddTaskOrderParametersPatterns on AddTaskOrderParameters {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddTaskOrderParameters value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddTaskOrderParameters() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddTaskOrderParameters value)  $default,){
final _that = this;
switch (_that) {
case _AddTaskOrderParameters():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddTaskOrderParameters value)?  $default,){
final _that = this;
switch (_that) {
case _AddTaskOrderParameters() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String accessToken,  String accountId,  String username,  int clientId,  String taskId,  String commentId,  String name,  String url,  String email,  String text,  File image,  DateTime timeStamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddTaskOrderParameters() when $default != null:
return $default(_that.accessToken,_that.accountId,_that.username,_that.clientId,_that.taskId,_that.commentId,_that.name,_that.url,_that.email,_that.text,_that.image,_that.timeStamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String accessToken,  String accountId,  String username,  int clientId,  String taskId,  String commentId,  String name,  String url,  String email,  String text,  File image,  DateTime timeStamp)  $default,) {final _that = this;
switch (_that) {
case _AddTaskOrderParameters():
return $default(_that.accessToken,_that.accountId,_that.username,_that.clientId,_that.taskId,_that.commentId,_that.name,_that.url,_that.email,_that.text,_that.image,_that.timeStamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String accessToken,  String accountId,  String username,  int clientId,  String taskId,  String commentId,  String name,  String url,  String email,  String text,  File image,  DateTime timeStamp)?  $default,) {final _that = this;
switch (_that) {
case _AddTaskOrderParameters() when $default != null:
return $default(_that.accessToken,_that.accountId,_that.username,_that.clientId,_that.taskId,_that.commentId,_that.name,_that.url,_that.email,_that.text,_that.image,_that.timeStamp);case _:
  return null;

}
}

}

/// @nodoc


class _AddTaskOrderParameters extends AddTaskOrderParameters {
  const _AddTaskOrderParameters({required this.accessToken, required this.accountId, required this.username, required this.clientId, required this.taskId, required this.commentId, required this.name, required this.url, required this.email, required this.text, required this.image, required this.timeStamp}): super._();
  

@override final  String accessToken;
@override final  String accountId;
@override final  String username;
@override final  int clientId;
@override final  String taskId;
@override final  String commentId;
@override final  String name;
@override final  String url;
@override final  String email;
@override final  String text;
@override final  File image;
@override final  DateTime timeStamp;

/// Create a copy of AddTaskOrderParameters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddTaskOrderParametersCopyWith<_AddTaskOrderParameters> get copyWith => __$AddTaskOrderParametersCopyWithImpl<_AddTaskOrderParameters>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddTaskOrderParameters&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.username, username) || other.username == username)&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.taskId, taskId) || other.taskId == taskId)&&(identical(other.commentId, commentId) || other.commentId == commentId)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.email, email) || other.email == email)&&(identical(other.text, text) || other.text == text)&&(identical(other.image, image) || other.image == image)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp));
}


@override
int get hashCode => Object.hash(runtimeType,accessToken,accountId,username,clientId,taskId,commentId,name,url,email,text,image,timeStamp);

@override
String toString() {
  return 'AddTaskOrderParameters(accessToken: $accessToken, accountId: $accountId, username: $username, clientId: $clientId, taskId: $taskId, commentId: $commentId, name: $name, url: $url, email: $email, text: $text, image: $image, timeStamp: $timeStamp)';
}


}

/// @nodoc
abstract mixin class _$AddTaskOrderParametersCopyWith<$Res> implements $AddTaskOrderParametersCopyWith<$Res> {
  factory _$AddTaskOrderParametersCopyWith(_AddTaskOrderParameters value, $Res Function(_AddTaskOrderParameters) _then) = __$AddTaskOrderParametersCopyWithImpl;
@override @useResult
$Res call({
 String accessToken, String accountId, String username, int clientId, String taskId, String commentId, String name, String url, String email, String text, File image, DateTime timeStamp
});




}
/// @nodoc
class __$AddTaskOrderParametersCopyWithImpl<$Res>
    implements _$AddTaskOrderParametersCopyWith<$Res> {
  __$AddTaskOrderParametersCopyWithImpl(this._self, this._then);

  final _AddTaskOrderParameters _self;
  final $Res Function(_AddTaskOrderParameters) _then;

/// Create a copy of AddTaskOrderParameters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? accountId = null,Object? username = null,Object? clientId = null,Object? taskId = null,Object? commentId = null,Object? name = null,Object? url = null,Object? email = null,Object? text = null,Object? image = null,Object? timeStamp = null,}) {
  return _then(_AddTaskOrderParameters(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as int,taskId: null == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String,commentId: null == commentId ? _self.commentId : commentId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as File,timeStamp: null == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
