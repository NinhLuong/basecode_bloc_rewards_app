// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_orders_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TasksOrdersModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'error') bool? get error;@JsonKey(name: 'error_code') int? get errorCode;@JsonKey(name: 'requests') List<TaskOrderModel>? get requests;
/// Create a copy of TasksOrdersModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TasksOrdersModelCopyWith<TasksOrdersModel> get copyWith => _$TasksOrdersModelCopyWithImpl<TasksOrdersModel>(this as TasksOrdersModel, _$identity);

  /// Serializes this TasksOrdersModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TasksOrdersModel'))
    ..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('errorCode', errorCode))..add(DiagnosticsProperty('requests', requests));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TasksOrdersModel&&(identical(other.error, error) || other.error == error)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&const DeepCollectionEquality().equals(other.requests, requests));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,errorCode,const DeepCollectionEquality().hash(requests));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TasksOrdersModel(error: $error, errorCode: $errorCode, requests: $requests)';
}


}

/// @nodoc
abstract mixin class $TasksOrdersModelCopyWith<$Res>  {
  factory $TasksOrdersModelCopyWith(TasksOrdersModel value, $Res Function(TasksOrdersModel) _then) = _$TasksOrdersModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'error') bool? error,@JsonKey(name: 'error_code') int? errorCode,@JsonKey(name: 'requests') List<TaskOrderModel>? requests
});




}
/// @nodoc
class _$TasksOrdersModelCopyWithImpl<$Res>
    implements $TasksOrdersModelCopyWith<$Res> {
  _$TasksOrdersModelCopyWithImpl(this._self, this._then);

  final TasksOrdersModel _self;
  final $Res Function(TasksOrdersModel) _then;

/// Create a copy of TasksOrdersModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? error = freezed,Object? errorCode = freezed,Object? requests = freezed,}) {
  return _then(_self.copyWith(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as int?,requests: freezed == requests ? _self.requests : requests // ignore: cast_nullable_to_non_nullable
as List<TaskOrderModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [TasksOrdersModel].
extension TasksOrdersModelPatterns on TasksOrdersModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TasksOrdersModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TasksOrdersModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TasksOrdersModel value)  $default,){
final _that = this;
switch (_that) {
case _TasksOrdersModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TasksOrdersModel value)?  $default,){
final _that = this;
switch (_that) {
case _TasksOrdersModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'requests')  List<TaskOrderModel>? requests)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TasksOrdersModel() when $default != null:
return $default(_that.error,_that.errorCode,_that.requests);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'requests')  List<TaskOrderModel>? requests)  $default,) {final _that = this;
switch (_that) {
case _TasksOrdersModel():
return $default(_that.error,_that.errorCode,_that.requests);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'requests')  List<TaskOrderModel>? requests)?  $default,) {final _that = this;
switch (_that) {
case _TasksOrdersModel() when $default != null:
return $default(_that.error,_that.errorCode,_that.requests);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TasksOrdersModel extends TasksOrdersModel with DiagnosticableTreeMixin {
  const _TasksOrdersModel({@JsonKey(name: 'error') this.error, @JsonKey(name: 'error_code') this.errorCode, @JsonKey(name: 'requests') final  List<TaskOrderModel>? requests}): _requests = requests,super._();
  factory _TasksOrdersModel.fromJson(Map<String, dynamic> json) => _$TasksOrdersModelFromJson(json);

@override@JsonKey(name: 'error') final  bool? error;
@override@JsonKey(name: 'error_code') final  int? errorCode;
 final  List<TaskOrderModel>? _requests;
@override@JsonKey(name: 'requests') List<TaskOrderModel>? get requests {
  final value = _requests;
  if (value == null) return null;
  if (_requests is EqualUnmodifiableListView) return _requests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of TasksOrdersModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TasksOrdersModelCopyWith<_TasksOrdersModel> get copyWith => __$TasksOrdersModelCopyWithImpl<_TasksOrdersModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TasksOrdersModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TasksOrdersModel'))
    ..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('errorCode', errorCode))..add(DiagnosticsProperty('requests', requests));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TasksOrdersModel&&(identical(other.error, error) || other.error == error)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&const DeepCollectionEquality().equals(other._requests, _requests));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,errorCode,const DeepCollectionEquality().hash(_requests));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TasksOrdersModel(error: $error, errorCode: $errorCode, requests: $requests)';
}


}

/// @nodoc
abstract mixin class _$TasksOrdersModelCopyWith<$Res> implements $TasksOrdersModelCopyWith<$Res> {
  factory _$TasksOrdersModelCopyWith(_TasksOrdersModel value, $Res Function(_TasksOrdersModel) _then) = __$TasksOrdersModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'error') bool? error,@JsonKey(name: 'error_code') int? errorCode,@JsonKey(name: 'requests') List<TaskOrderModel>? requests
});




}
/// @nodoc
class __$TasksOrdersModelCopyWithImpl<$Res>
    implements _$TasksOrdersModelCopyWith<$Res> {
  __$TasksOrdersModelCopyWithImpl(this._self, this._then);

  final _TasksOrdersModel _self;
  final $Res Function(_TasksOrdersModel) _then;

/// Create a copy of TasksOrdersModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = freezed,Object? errorCode = freezed,Object? requests = freezed,}) {
  return _then(_TasksOrdersModel(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as int?,requests: freezed == requests ? _self._requests : requests // ignore: cast_nullable_to_non_nullable
as List<TaskOrderModel>?,
  ));
}


}


/// @nodoc
mixin _$TaskOrderModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'error') bool? get error;@JsonKey(name: 'error_code') int? get errorCode;@JsonKey(name: 'id') String? get id;@JsonKey(name: 'task_id') String? get taskId;@JsonKey(name: 'task_name') String? get taskName;@JsonKey(name: 'comment_id') String? get commentId;@JsonKey(name: 'username') String? get username;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'email') String? get email;@JsonKey(name: 'text') String? get text;@JsonKey(name: 'image') String? get image;@JsonKey(name: 'timestamp') String? get timestamp;@JsonKey(name: 'price') String? get price;@JsonKey(name: 'status') String? get status;
/// Create a copy of TaskOrderModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskOrderModelCopyWith<TaskOrderModel> get copyWith => _$TaskOrderModelCopyWithImpl<TaskOrderModel>(this as TaskOrderModel, _$identity);

  /// Serializes this TaskOrderModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TaskOrderModel'))
    ..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('errorCode', errorCode))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('taskId', taskId))..add(DiagnosticsProperty('taskName', taskName))..add(DiagnosticsProperty('commentId', commentId))..add(DiagnosticsProperty('username', username))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('text', text))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('timestamp', timestamp))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskOrderModel&&(identical(other.error, error) || other.error == error)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&(identical(other.id, id) || other.id == id)&&(identical(other.taskId, taskId) || other.taskId == taskId)&&(identical(other.taskName, taskName) || other.taskName == taskName)&&(identical(other.commentId, commentId) || other.commentId == commentId)&&(identical(other.username, username) || other.username == username)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.text, text) || other.text == text)&&(identical(other.image, image) || other.image == image)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.price, price) || other.price == price)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,errorCode,id,taskId,taskName,commentId,username,name,email,text,image,timestamp,price,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TaskOrderModel(error: $error, errorCode: $errorCode, id: $id, taskId: $taskId, taskName: $taskName, commentId: $commentId, username: $username, name: $name, email: $email, text: $text, image: $image, timestamp: $timestamp, price: $price, status: $status)';
}


}

/// @nodoc
abstract mixin class $TaskOrderModelCopyWith<$Res>  {
  factory $TaskOrderModelCopyWith(TaskOrderModel value, $Res Function(TaskOrderModel) _then) = _$TaskOrderModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'error') bool? error,@JsonKey(name: 'error_code') int? errorCode,@JsonKey(name: 'id') String? id,@JsonKey(name: 'task_id') String? taskId,@JsonKey(name: 'task_name') String? taskName,@JsonKey(name: 'comment_id') String? commentId,@JsonKey(name: 'username') String? username,@JsonKey(name: 'name') String? name,@JsonKey(name: 'email') String? email,@JsonKey(name: 'text') String? text,@JsonKey(name: 'image') String? image,@JsonKey(name: 'timestamp') String? timestamp,@JsonKey(name: 'price') String? price,@JsonKey(name: 'status') String? status
});




}
/// @nodoc
class _$TaskOrderModelCopyWithImpl<$Res>
    implements $TaskOrderModelCopyWith<$Res> {
  _$TaskOrderModelCopyWithImpl(this._self, this._then);

  final TaskOrderModel _self;
  final $Res Function(TaskOrderModel) _then;

/// Create a copy of TaskOrderModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? error = freezed,Object? errorCode = freezed,Object? id = freezed,Object? taskId = freezed,Object? taskName = freezed,Object? commentId = freezed,Object? username = freezed,Object? name = freezed,Object? email = freezed,Object? text = freezed,Object? image = freezed,Object? timestamp = freezed,Object? price = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,taskId: freezed == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String?,taskName: freezed == taskName ? _self.taskName : taskName // ignore: cast_nullable_to_non_nullable
as String?,commentId: freezed == commentId ? _self.commentId : commentId // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TaskOrderModel].
extension TaskOrderModelPatterns on TaskOrderModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TaskOrderModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TaskOrderModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TaskOrderModel value)  $default,){
final _that = this;
switch (_that) {
case _TaskOrderModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TaskOrderModel value)?  $default,){
final _that = this;
switch (_that) {
case _TaskOrderModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'id')  String? id, @JsonKey(name: 'task_id')  String? taskId, @JsonKey(name: 'task_name')  String? taskName, @JsonKey(name: 'comment_id')  String? commentId, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'text')  String? text, @JsonKey(name: 'image')  String? image, @JsonKey(name: 'timestamp')  String? timestamp, @JsonKey(name: 'price')  String? price, @JsonKey(name: 'status')  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TaskOrderModel() when $default != null:
return $default(_that.error,_that.errorCode,_that.id,_that.taskId,_that.taskName,_that.commentId,_that.username,_that.name,_that.email,_that.text,_that.image,_that.timestamp,_that.price,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'id')  String? id, @JsonKey(name: 'task_id')  String? taskId, @JsonKey(name: 'task_name')  String? taskName, @JsonKey(name: 'comment_id')  String? commentId, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'text')  String? text, @JsonKey(name: 'image')  String? image, @JsonKey(name: 'timestamp')  String? timestamp, @JsonKey(name: 'price')  String? price, @JsonKey(name: 'status')  String? status)  $default,) {final _that = this;
switch (_that) {
case _TaskOrderModel():
return $default(_that.error,_that.errorCode,_that.id,_that.taskId,_that.taskName,_that.commentId,_that.username,_that.name,_that.email,_that.text,_that.image,_that.timestamp,_that.price,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'id')  String? id, @JsonKey(name: 'task_id')  String? taskId, @JsonKey(name: 'task_name')  String? taskName, @JsonKey(name: 'comment_id')  String? commentId, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'text')  String? text, @JsonKey(name: 'image')  String? image, @JsonKey(name: 'timestamp')  String? timestamp, @JsonKey(name: 'price')  String? price, @JsonKey(name: 'status')  String? status)?  $default,) {final _that = this;
switch (_that) {
case _TaskOrderModel() when $default != null:
return $default(_that.error,_that.errorCode,_that.id,_that.taskId,_that.taskName,_that.commentId,_that.username,_that.name,_that.email,_that.text,_that.image,_that.timestamp,_that.price,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TaskOrderModel extends TaskOrderModel with DiagnosticableTreeMixin {
  const _TaskOrderModel({@JsonKey(name: 'error') this.error, @JsonKey(name: 'error_code') this.errorCode, @JsonKey(name: 'id') this.id, @JsonKey(name: 'task_id') this.taskId, @JsonKey(name: 'task_name') this.taskName, @JsonKey(name: 'comment_id') this.commentId, @JsonKey(name: 'username') this.username, @JsonKey(name: 'name') this.name, @JsonKey(name: 'email') this.email, @JsonKey(name: 'text') this.text, @JsonKey(name: 'image') this.image, @JsonKey(name: 'timestamp') this.timestamp, @JsonKey(name: 'price') this.price, @JsonKey(name: 'status') this.status}): super._();
  factory _TaskOrderModel.fromJson(Map<String, dynamic> json) => _$TaskOrderModelFromJson(json);

@override@JsonKey(name: 'error') final  bool? error;
@override@JsonKey(name: 'error_code') final  int? errorCode;
@override@JsonKey(name: 'id') final  String? id;
@override@JsonKey(name: 'task_id') final  String? taskId;
@override@JsonKey(name: 'task_name') final  String? taskName;
@override@JsonKey(name: 'comment_id') final  String? commentId;
@override@JsonKey(name: 'username') final  String? username;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'email') final  String? email;
@override@JsonKey(name: 'text') final  String? text;
@override@JsonKey(name: 'image') final  String? image;
@override@JsonKey(name: 'timestamp') final  String? timestamp;
@override@JsonKey(name: 'price') final  String? price;
@override@JsonKey(name: 'status') final  String? status;

/// Create a copy of TaskOrderModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskOrderModelCopyWith<_TaskOrderModel> get copyWith => __$TaskOrderModelCopyWithImpl<_TaskOrderModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TaskOrderModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TaskOrderModel'))
    ..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('errorCode', errorCode))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('taskId', taskId))..add(DiagnosticsProperty('taskName', taskName))..add(DiagnosticsProperty('commentId', commentId))..add(DiagnosticsProperty('username', username))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('text', text))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('timestamp', timestamp))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskOrderModel&&(identical(other.error, error) || other.error == error)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&(identical(other.id, id) || other.id == id)&&(identical(other.taskId, taskId) || other.taskId == taskId)&&(identical(other.taskName, taskName) || other.taskName == taskName)&&(identical(other.commentId, commentId) || other.commentId == commentId)&&(identical(other.username, username) || other.username == username)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.text, text) || other.text == text)&&(identical(other.image, image) || other.image == image)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.price, price) || other.price == price)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,errorCode,id,taskId,taskName,commentId,username,name,email,text,image,timestamp,price,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TaskOrderModel(error: $error, errorCode: $errorCode, id: $id, taskId: $taskId, taskName: $taskName, commentId: $commentId, username: $username, name: $name, email: $email, text: $text, image: $image, timestamp: $timestamp, price: $price, status: $status)';
}


}

/// @nodoc
abstract mixin class _$TaskOrderModelCopyWith<$Res> implements $TaskOrderModelCopyWith<$Res> {
  factory _$TaskOrderModelCopyWith(_TaskOrderModel value, $Res Function(_TaskOrderModel) _then) = __$TaskOrderModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'error') bool? error,@JsonKey(name: 'error_code') int? errorCode,@JsonKey(name: 'id') String? id,@JsonKey(name: 'task_id') String? taskId,@JsonKey(name: 'task_name') String? taskName,@JsonKey(name: 'comment_id') String? commentId,@JsonKey(name: 'username') String? username,@JsonKey(name: 'name') String? name,@JsonKey(name: 'email') String? email,@JsonKey(name: 'text') String? text,@JsonKey(name: 'image') String? image,@JsonKey(name: 'timestamp') String? timestamp,@JsonKey(name: 'price') String? price,@JsonKey(name: 'status') String? status
});




}
/// @nodoc
class __$TaskOrderModelCopyWithImpl<$Res>
    implements _$TaskOrderModelCopyWith<$Res> {
  __$TaskOrderModelCopyWithImpl(this._self, this._then);

  final _TaskOrderModel _self;
  final $Res Function(_TaskOrderModel) _then;

/// Create a copy of TaskOrderModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = freezed,Object? errorCode = freezed,Object? id = freezed,Object? taskId = freezed,Object? taskName = freezed,Object? commentId = freezed,Object? username = freezed,Object? name = freezed,Object? email = freezed,Object? text = freezed,Object? image = freezed,Object? timestamp = freezed,Object? price = freezed,Object? status = freezed,}) {
  return _then(_TaskOrderModel(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,taskId: freezed == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String?,taskName: freezed == taskName ? _self.taskName : taskName // ignore: cast_nullable_to_non_nullable
as String?,commentId: freezed == commentId ? _self.commentId : commentId // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
