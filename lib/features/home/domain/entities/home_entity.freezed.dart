// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEntity {

 String get balance; List<OfferWallEntity> get offerWalls;
/// Create a copy of HomeEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeEntityCopyWith<HomeEntity> get copyWith => _$HomeEntityCopyWithImpl<HomeEntity>(this as HomeEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEntity&&(identical(other.balance, balance) || other.balance == balance)&&const DeepCollectionEquality().equals(other.offerWalls, offerWalls));
}


@override
int get hashCode => Object.hash(runtimeType,balance,const DeepCollectionEquality().hash(offerWalls));

@override
String toString() {
  return 'HomeEntity(balance: $balance, offerWalls: $offerWalls)';
}


}

/// @nodoc
abstract mixin class $HomeEntityCopyWith<$Res>  {
  factory $HomeEntityCopyWith(HomeEntity value, $Res Function(HomeEntity) _then) = _$HomeEntityCopyWithImpl;
@useResult
$Res call({
 String balance, List<OfferWallEntity> offerWalls
});




}
/// @nodoc
class _$HomeEntityCopyWithImpl<$Res>
    implements $HomeEntityCopyWith<$Res> {
  _$HomeEntityCopyWithImpl(this._self, this._then);

  final HomeEntity _self;
  final $Res Function(HomeEntity) _then;

/// Create a copy of HomeEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? balance = null,Object? offerWalls = null,}) {
  return _then(_self.copyWith(
balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as String,offerWalls: null == offerWalls ? _self.offerWalls : offerWalls // ignore: cast_nullable_to_non_nullable
as List<OfferWallEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeEntity].
extension HomeEntityPatterns on HomeEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeEntity value)  $default,){
final _that = this;
switch (_that) {
case _HomeEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeEntity value)?  $default,){
final _that = this;
switch (_that) {
case _HomeEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String balance,  List<OfferWallEntity> offerWalls)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeEntity() when $default != null:
return $default(_that.balance,_that.offerWalls);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String balance,  List<OfferWallEntity> offerWalls)  $default,) {final _that = this;
switch (_that) {
case _HomeEntity():
return $default(_that.balance,_that.offerWalls);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String balance,  List<OfferWallEntity> offerWalls)?  $default,) {final _that = this;
switch (_that) {
case _HomeEntity() when $default != null:
return $default(_that.balance,_that.offerWalls);case _:
  return null;

}
}

}

/// @nodoc


class _HomeEntity extends HomeEntity {
  const _HomeEntity({required this.balance, required final  List<OfferWallEntity> offerWalls}): _offerWalls = offerWalls,super._();
  

@override final  String balance;
 final  List<OfferWallEntity> _offerWalls;
@override List<OfferWallEntity> get offerWalls {
  if (_offerWalls is EqualUnmodifiableListView) return _offerWalls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_offerWalls);
}


/// Create a copy of HomeEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeEntityCopyWith<_HomeEntity> get copyWith => __$HomeEntityCopyWithImpl<_HomeEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeEntity&&(identical(other.balance, balance) || other.balance == balance)&&const DeepCollectionEquality().equals(other._offerWalls, _offerWalls));
}


@override
int get hashCode => Object.hash(runtimeType,balance,const DeepCollectionEquality().hash(_offerWalls));

@override
String toString() {
  return 'HomeEntity(balance: $balance, offerWalls: $offerWalls)';
}


}

/// @nodoc
abstract mixin class _$HomeEntityCopyWith<$Res> implements $HomeEntityCopyWith<$Res> {
  factory _$HomeEntityCopyWith(_HomeEntity value, $Res Function(_HomeEntity) _then) = __$HomeEntityCopyWithImpl;
@override @useResult
$Res call({
 String balance, List<OfferWallEntity> offerWalls
});




}
/// @nodoc
class __$HomeEntityCopyWithImpl<$Res>
    implements _$HomeEntityCopyWith<$Res> {
  __$HomeEntityCopyWithImpl(this._self, this._then);

  final _HomeEntity _self;
  final $Res Function(_HomeEntity) _then;

/// Create a copy of HomeEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? balance = null,Object? offerWalls = null,}) {
  return _then(_HomeEntity(
balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as String,offerWalls: null == offerWalls ? _self._offerWalls : offerWalls // ignore: cast_nullable_to_non_nullable
as List<OfferWallEntity>,
  ));
}


}

/// @nodoc
mixin _$OfferWallEntity {

 String get id; String get title; String? get subtitle; String get url; String get type; String? get thumbnail; String? get position; String? get status;
/// Create a copy of OfferWallEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfferWallEntityCopyWith<OfferWallEntity> get copyWith => _$OfferWallEntityCopyWithImpl<OfferWallEntity>(this as OfferWallEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OfferWallEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.url, url) || other.url == url)&&(identical(other.type, type) || other.type == type)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.position, position) || other.position == position)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,subtitle,url,type,thumbnail,position,status);

@override
String toString() {
  return 'OfferWallEntity(id: $id, title: $title, subtitle: $subtitle, url: $url, type: $type, thumbnail: $thumbnail, position: $position, status: $status)';
}


}

/// @nodoc
abstract mixin class $OfferWallEntityCopyWith<$Res>  {
  factory $OfferWallEntityCopyWith(OfferWallEntity value, $Res Function(OfferWallEntity) _then) = _$OfferWallEntityCopyWithImpl;
@useResult
$Res call({
 String id, String title, String? subtitle, String url, String type, String? thumbnail, String? position, String? status
});




}
/// @nodoc
class _$OfferWallEntityCopyWithImpl<$Res>
    implements $OfferWallEntityCopyWith<$Res> {
  _$OfferWallEntityCopyWithImpl(this._self, this._then);

  final OfferWallEntity _self;
  final $Res Function(OfferWallEntity) _then;

/// Create a copy of OfferWallEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? subtitle = freezed,Object? url = null,Object? type = null,Object? thumbnail = freezed,Object? position = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OfferWallEntity].
extension OfferWallEntityPatterns on OfferWallEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OfferWallEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OfferWallEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OfferWallEntity value)  $default,){
final _that = this;
switch (_that) {
case _OfferWallEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OfferWallEntity value)?  $default,){
final _that = this;
switch (_that) {
case _OfferWallEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String? subtitle,  String url,  String type,  String? thumbnail,  String? position,  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OfferWallEntity() when $default != null:
return $default(_that.id,_that.title,_that.subtitle,_that.url,_that.type,_that.thumbnail,_that.position,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String? subtitle,  String url,  String type,  String? thumbnail,  String? position,  String? status)  $default,) {final _that = this;
switch (_that) {
case _OfferWallEntity():
return $default(_that.id,_that.title,_that.subtitle,_that.url,_that.type,_that.thumbnail,_that.position,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String? subtitle,  String url,  String type,  String? thumbnail,  String? position,  String? status)?  $default,) {final _that = this;
switch (_that) {
case _OfferWallEntity() when $default != null:
return $default(_that.id,_that.title,_that.subtitle,_that.url,_that.type,_that.thumbnail,_that.position,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _OfferWallEntity extends OfferWallEntity {
  const _OfferWallEntity({required this.id, required this.title, this.subtitle, required this.url, required this.type, this.thumbnail, this.position, this.status}): super._();
  

@override final  String id;
@override final  String title;
@override final  String? subtitle;
@override final  String url;
@override final  String type;
@override final  String? thumbnail;
@override final  String? position;
@override final  String? status;

/// Create a copy of OfferWallEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OfferWallEntityCopyWith<_OfferWallEntity> get copyWith => __$OfferWallEntityCopyWithImpl<_OfferWallEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OfferWallEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.url, url) || other.url == url)&&(identical(other.type, type) || other.type == type)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.position, position) || other.position == position)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,subtitle,url,type,thumbnail,position,status);

@override
String toString() {
  return 'OfferWallEntity(id: $id, title: $title, subtitle: $subtitle, url: $url, type: $type, thumbnail: $thumbnail, position: $position, status: $status)';
}


}

/// @nodoc
abstract mixin class _$OfferWallEntityCopyWith<$Res> implements $OfferWallEntityCopyWith<$Res> {
  factory _$OfferWallEntityCopyWith(_OfferWallEntity value, $Res Function(_OfferWallEntity) _then) = __$OfferWallEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String? subtitle, String url, String type, String? thumbnail, String? position, String? status
});




}
/// @nodoc
class __$OfferWallEntityCopyWithImpl<$Res>
    implements _$OfferWallEntityCopyWith<$Res> {
  __$OfferWallEntityCopyWithImpl(this._self, this._then);

  final _OfferWallEntity _self;
  final $Res Function(_OfferWallEntity) _then;

/// Create a copy of OfferWallEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? subtitle = freezed,Object? url = null,Object? type = null,Object? thumbnail = freezed,Object? position = freezed,Object? status = freezed,}) {
  return _then(_OfferWallEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
