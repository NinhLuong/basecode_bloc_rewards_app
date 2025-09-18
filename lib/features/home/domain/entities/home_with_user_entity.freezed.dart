// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_with_user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeWithUserEntity {

 HomeEntity get homeData; UserEntity get userData;
/// Create a copy of HomeWithUserEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeWithUserEntityCopyWith<HomeWithUserEntity> get copyWith => _$HomeWithUserEntityCopyWithImpl<HomeWithUserEntity>(this as HomeWithUserEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeWithUserEntity&&(identical(other.homeData, homeData) || other.homeData == homeData)&&(identical(other.userData, userData) || other.userData == userData));
}


@override
int get hashCode => Object.hash(runtimeType,homeData,userData);

@override
String toString() {
  return 'HomeWithUserEntity(homeData: $homeData, userData: $userData)';
}


}

/// @nodoc
abstract mixin class $HomeWithUserEntityCopyWith<$Res>  {
  factory $HomeWithUserEntityCopyWith(HomeWithUserEntity value, $Res Function(HomeWithUserEntity) _then) = _$HomeWithUserEntityCopyWithImpl;
@useResult
$Res call({
 HomeEntity homeData, UserEntity userData
});


$HomeEntityCopyWith<$Res> get homeData;$UserEntityCopyWith<$Res> get userData;

}
/// @nodoc
class _$HomeWithUserEntityCopyWithImpl<$Res>
    implements $HomeWithUserEntityCopyWith<$Res> {
  _$HomeWithUserEntityCopyWithImpl(this._self, this._then);

  final HomeWithUserEntity _self;
  final $Res Function(HomeWithUserEntity) _then;

/// Create a copy of HomeWithUserEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? homeData = null,Object? userData = null,}) {
  return _then(_self.copyWith(
homeData: null == homeData ? _self.homeData : homeData // ignore: cast_nullable_to_non_nullable
as HomeEntity,userData: null == userData ? _self.userData : userData // ignore: cast_nullable_to_non_nullable
as UserEntity,
  ));
}
/// Create a copy of HomeWithUserEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeEntityCopyWith<$Res> get homeData {
  
  return $HomeEntityCopyWith<$Res>(_self.homeData, (value) {
    return _then(_self.copyWith(homeData: value));
  });
}/// Create a copy of HomeWithUserEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res> get userData {
  
  return $UserEntityCopyWith<$Res>(_self.userData, (value) {
    return _then(_self.copyWith(userData: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeWithUserEntity].
extension HomeWithUserEntityPatterns on HomeWithUserEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeWithUserEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeWithUserEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeWithUserEntity value)  $default,){
final _that = this;
switch (_that) {
case _HomeWithUserEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeWithUserEntity value)?  $default,){
final _that = this;
switch (_that) {
case _HomeWithUserEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( HomeEntity homeData,  UserEntity userData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeWithUserEntity() when $default != null:
return $default(_that.homeData,_that.userData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( HomeEntity homeData,  UserEntity userData)  $default,) {final _that = this;
switch (_that) {
case _HomeWithUserEntity():
return $default(_that.homeData,_that.userData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( HomeEntity homeData,  UserEntity userData)?  $default,) {final _that = this;
switch (_that) {
case _HomeWithUserEntity() when $default != null:
return $default(_that.homeData,_that.userData);case _:
  return null;

}
}

}

/// @nodoc


class _HomeWithUserEntity extends HomeWithUserEntity {
  const _HomeWithUserEntity({required this.homeData, required this.userData}): super._();
  

@override final  HomeEntity homeData;
@override final  UserEntity userData;

/// Create a copy of HomeWithUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeWithUserEntityCopyWith<_HomeWithUserEntity> get copyWith => __$HomeWithUserEntityCopyWithImpl<_HomeWithUserEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeWithUserEntity&&(identical(other.homeData, homeData) || other.homeData == homeData)&&(identical(other.userData, userData) || other.userData == userData));
}


@override
int get hashCode => Object.hash(runtimeType,homeData,userData);

@override
String toString() {
  return 'HomeWithUserEntity(homeData: $homeData, userData: $userData)';
}


}

/// @nodoc
abstract mixin class _$HomeWithUserEntityCopyWith<$Res> implements $HomeWithUserEntityCopyWith<$Res> {
  factory _$HomeWithUserEntityCopyWith(_HomeWithUserEntity value, $Res Function(_HomeWithUserEntity) _then) = __$HomeWithUserEntityCopyWithImpl;
@override @useResult
$Res call({
 HomeEntity homeData, UserEntity userData
});


@override $HomeEntityCopyWith<$Res> get homeData;@override $UserEntityCopyWith<$Res> get userData;

}
/// @nodoc
class __$HomeWithUserEntityCopyWithImpl<$Res>
    implements _$HomeWithUserEntityCopyWith<$Res> {
  __$HomeWithUserEntityCopyWithImpl(this._self, this._then);

  final _HomeWithUserEntity _self;
  final $Res Function(_HomeWithUserEntity) _then;

/// Create a copy of HomeWithUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? homeData = null,Object? userData = null,}) {
  return _then(_HomeWithUserEntity(
homeData: null == homeData ? _self.homeData : homeData // ignore: cast_nullable_to_non_nullable
as HomeEntity,userData: null == userData ? _self.userData : userData // ignore: cast_nullable_to_non_nullable
as UserEntity,
  ));
}

/// Create a copy of HomeWithUserEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeEntityCopyWith<$Res> get homeData {
  
  return $HomeEntityCopyWith<$Res>(_self.homeData, (value) {
    return _then(_self.copyWith(homeData: value));
  });
}/// Create a copy of HomeWithUserEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res> get userData {
  
  return $UserEntityCopyWith<$Res>(_self.userData, (value) {
    return _then(_self.copyWith(userData: value));
  });
}
}

// dart format on
