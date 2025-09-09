// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TasksEntity {

 List<TaskEntity> get tasks;
/// Create a copy of TasksEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TasksEntityCopyWith<TasksEntity> get copyWith => _$TasksEntityCopyWithImpl<TasksEntity>(this as TasksEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TasksEntity&&const DeepCollectionEquality().equals(other.tasks, tasks));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(tasks));

@override
String toString() {
  return 'TasksEntity(tasks: $tasks)';
}


}

/// @nodoc
abstract mixin class $TasksEntityCopyWith<$Res>  {
  factory $TasksEntityCopyWith(TasksEntity value, $Res Function(TasksEntity) _then) = _$TasksEntityCopyWithImpl;
@useResult
$Res call({
 List<TaskEntity> tasks
});




}
/// @nodoc
class _$TasksEntityCopyWithImpl<$Res>
    implements $TasksEntityCopyWith<$Res> {
  _$TasksEntityCopyWithImpl(this._self, this._then);

  final TasksEntity _self;
  final $Res Function(TasksEntity) _then;

/// Create a copy of TasksEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tasks = null,}) {
  return _then(_self.copyWith(
tasks: null == tasks ? _self.tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<TaskEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [TasksEntity].
extension TasksEntityPatterns on TasksEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TasksEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TasksEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TasksEntity value)  $default,){
final _that = this;
switch (_that) {
case _TasksEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TasksEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TasksEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TaskEntity> tasks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TasksEntity() when $default != null:
return $default(_that.tasks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TaskEntity> tasks)  $default,) {final _that = this;
switch (_that) {
case _TasksEntity():
return $default(_that.tasks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TaskEntity> tasks)?  $default,) {final _that = this;
switch (_that) {
case _TasksEntity() when $default != null:
return $default(_that.tasks);case _:
  return null;

}
}

}

/// @nodoc


class _TasksEntity extends TasksEntity {
  const _TasksEntity({required final  List<TaskEntity> tasks}): _tasks = tasks,super._();
  

 final  List<TaskEntity> _tasks;
@override List<TaskEntity> get tasks {
  if (_tasks is EqualUnmodifiableListView) return _tasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tasks);
}


/// Create a copy of TasksEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TasksEntityCopyWith<_TasksEntity> get copyWith => __$TasksEntityCopyWithImpl<_TasksEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TasksEntity&&const DeepCollectionEquality().equals(other._tasks, _tasks));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tasks));

@override
String toString() {
  return 'TasksEntity(tasks: $tasks)';
}


}

/// @nodoc
abstract mixin class _$TasksEntityCopyWith<$Res> implements $TasksEntityCopyWith<$Res> {
  factory _$TasksEntityCopyWith(_TasksEntity value, $Res Function(_TasksEntity) _then) = __$TasksEntityCopyWithImpl;
@override @useResult
$Res call({
 List<TaskEntity> tasks
});




}
/// @nodoc
class __$TasksEntityCopyWithImpl<$Res>
    implements _$TasksEntityCopyWith<$Res> {
  __$TasksEntityCopyWithImpl(this._self, this._then);

  final _TasksEntity _self;
  final $Res Function(_TasksEntity) _then;

/// Create a copy of TasksEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tasks = null,}) {
  return _then(_TasksEntity(
tasks: null == tasks ? _self._tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<TaskEntity>,
  ));
}


}

/// @nodoc
mixin _$TaskEntity {

 String get id; String get title; String get subTitle; String get description; String get image; String get url; String get price;
/// Create a copy of TaskEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskEntityCopyWith<TaskEntity> get copyWith => _$TaskEntityCopyWithImpl<TaskEntity>(this as TaskEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.subTitle, subTitle) || other.subTitle == subTitle)&&(identical(other.description, description) || other.description == description)&&(identical(other.image, image) || other.image == image)&&(identical(other.url, url) || other.url == url)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,subTitle,description,image,url,price);

@override
String toString() {
  return 'TaskEntity(id: $id, title: $title, subTitle: $subTitle, description: $description, image: $image, url: $url, price: $price)';
}


}

/// @nodoc
abstract mixin class $TaskEntityCopyWith<$Res>  {
  factory $TaskEntityCopyWith(TaskEntity value, $Res Function(TaskEntity) _then) = _$TaskEntityCopyWithImpl;
@useResult
$Res call({
 String id, String title, String subTitle, String description, String image, String url, String price
});




}
/// @nodoc
class _$TaskEntityCopyWithImpl<$Res>
    implements $TaskEntityCopyWith<$Res> {
  _$TaskEntityCopyWithImpl(this._self, this._then);

  final TaskEntity _self;
  final $Res Function(TaskEntity) _then;

/// Create a copy of TaskEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? subTitle = null,Object? description = null,Object? image = null,Object? url = null,Object? price = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subTitle: null == subTitle ? _self.subTitle : subTitle // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TaskEntity].
extension TaskEntityPatterns on TaskEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TaskEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TaskEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TaskEntity value)  $default,){
final _that = this;
switch (_that) {
case _TaskEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TaskEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TaskEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String subTitle,  String description,  String image,  String url,  String price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TaskEntity() when $default != null:
return $default(_that.id,_that.title,_that.subTitle,_that.description,_that.image,_that.url,_that.price);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String subTitle,  String description,  String image,  String url,  String price)  $default,) {final _that = this;
switch (_that) {
case _TaskEntity():
return $default(_that.id,_that.title,_that.subTitle,_that.description,_that.image,_that.url,_that.price);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String subTitle,  String description,  String image,  String url,  String price)?  $default,) {final _that = this;
switch (_that) {
case _TaskEntity() when $default != null:
return $default(_that.id,_that.title,_that.subTitle,_that.description,_that.image,_that.url,_that.price);case _:
  return null;

}
}

}

/// @nodoc


class _TaskEntity extends TaskEntity {
  const _TaskEntity({required this.id, required this.title, required this.subTitle, required this.description, required this.image, required this.url, required this.price}): super._();
  

@override final  String id;
@override final  String title;
@override final  String subTitle;
@override final  String description;
@override final  String image;
@override final  String url;
@override final  String price;

/// Create a copy of TaskEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskEntityCopyWith<_TaskEntity> get copyWith => __$TaskEntityCopyWithImpl<_TaskEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.subTitle, subTitle) || other.subTitle == subTitle)&&(identical(other.description, description) || other.description == description)&&(identical(other.image, image) || other.image == image)&&(identical(other.url, url) || other.url == url)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,subTitle,description,image,url,price);

@override
String toString() {
  return 'TaskEntity(id: $id, title: $title, subTitle: $subTitle, description: $description, image: $image, url: $url, price: $price)';
}


}

/// @nodoc
abstract mixin class _$TaskEntityCopyWith<$Res> implements $TaskEntityCopyWith<$Res> {
  factory _$TaskEntityCopyWith(_TaskEntity value, $Res Function(_TaskEntity) _then) = __$TaskEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String subTitle, String description, String image, String url, String price
});




}
/// @nodoc
class __$TaskEntityCopyWithImpl<$Res>
    implements _$TaskEntityCopyWith<$Res> {
  __$TaskEntityCopyWithImpl(this._self, this._then);

  final _TaskEntity _self;
  final $Res Function(_TaskEntity) _then;

/// Create a copy of TaskEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? subTitle = null,Object? description = null,Object? image = null,Object? url = null,Object? price = null,}) {
  return _then(_TaskEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subTitle: null == subTitle ? _self.subTitle : subTitle // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
