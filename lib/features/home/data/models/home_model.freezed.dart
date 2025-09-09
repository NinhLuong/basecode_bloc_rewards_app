// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'error') bool? get error;@JsonKey(name: 'error_code') int? get errorCode;@JsonKey(name: 'balance') String? get balance;@JsonKey(name: 'offerwalls') List<OfferWallModel>? get offerWalls;
/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeModelCopyWith<HomeModel> get copyWith => _$HomeModelCopyWithImpl<HomeModel>(this as HomeModel, _$identity);

  /// Serializes this HomeModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HomeModel'))
    ..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('errorCode', errorCode))..add(DiagnosticsProperty('balance', balance))..add(DiagnosticsProperty('offerWalls', offerWalls));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeModel&&(identical(other.error, error) || other.error == error)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&(identical(other.balance, balance) || other.balance == balance)&&const DeepCollectionEquality().equals(other.offerWalls, offerWalls));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,errorCode,balance,const DeepCollectionEquality().hash(offerWalls));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HomeModel(error: $error, errorCode: $errorCode, balance: $balance, offerWalls: $offerWalls)';
}


}

/// @nodoc
abstract mixin class $HomeModelCopyWith<$Res>  {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) _then) = _$HomeModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'error') bool? error,@JsonKey(name: 'error_code') int? errorCode,@JsonKey(name: 'balance') String? balance,@JsonKey(name: 'offerwalls') List<OfferWallModel>? offerWalls
});




}
/// @nodoc
class _$HomeModelCopyWithImpl<$Res>
    implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._self, this._then);

  final HomeModel _self;
  final $Res Function(HomeModel) _then;

/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? error = freezed,Object? errorCode = freezed,Object? balance = freezed,Object? offerWalls = freezed,}) {
  return _then(_self.copyWith(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as int?,balance: freezed == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as String?,offerWalls: freezed == offerWalls ? _self.offerWalls : offerWalls // ignore: cast_nullable_to_non_nullable
as List<OfferWallModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeModel].
extension HomeModelPatterns on HomeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeModel value)  $default,){
final _that = this;
switch (_that) {
case _HomeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeModel value)?  $default,){
final _that = this;
switch (_that) {
case _HomeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'balance')  String? balance, @JsonKey(name: 'offerwalls')  List<OfferWallModel>? offerWalls)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeModel() when $default != null:
return $default(_that.error,_that.errorCode,_that.balance,_that.offerWalls);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'balance')  String? balance, @JsonKey(name: 'offerwalls')  List<OfferWallModel>? offerWalls)  $default,) {final _that = this;
switch (_that) {
case _HomeModel():
return $default(_that.error,_that.errorCode,_that.balance,_that.offerWalls);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'balance')  String? balance, @JsonKey(name: 'offerwalls')  List<OfferWallModel>? offerWalls)?  $default,) {final _that = this;
switch (_that) {
case _HomeModel() when $default != null:
return $default(_that.error,_that.errorCode,_that.balance,_that.offerWalls);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeModel extends HomeModel with DiagnosticableTreeMixin {
  const _HomeModel({@JsonKey(name: 'error') this.error, @JsonKey(name: 'error_code') this.errorCode, @JsonKey(name: 'balance') this.balance, @JsonKey(name: 'offerwalls') final  List<OfferWallModel>? offerWalls}): _offerWalls = offerWalls,super._();
  factory _HomeModel.fromJson(Map<String, dynamic> json) => _$HomeModelFromJson(json);

@override@JsonKey(name: 'error') final  bool? error;
@override@JsonKey(name: 'error_code') final  int? errorCode;
@override@JsonKey(name: 'balance') final  String? balance;
 final  List<OfferWallModel>? _offerWalls;
@override@JsonKey(name: 'offerwalls') List<OfferWallModel>? get offerWalls {
  final value = _offerWalls;
  if (value == null) return null;
  if (_offerWalls is EqualUnmodifiableListView) return _offerWalls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeModelCopyWith<_HomeModel> get copyWith => __$HomeModelCopyWithImpl<_HomeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HomeModel'))
    ..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('errorCode', errorCode))..add(DiagnosticsProperty('balance', balance))..add(DiagnosticsProperty('offerWalls', offerWalls));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeModel&&(identical(other.error, error) || other.error == error)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&(identical(other.balance, balance) || other.balance == balance)&&const DeepCollectionEquality().equals(other._offerWalls, _offerWalls));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,errorCode,balance,const DeepCollectionEquality().hash(_offerWalls));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HomeModel(error: $error, errorCode: $errorCode, balance: $balance, offerWalls: $offerWalls)';
}


}

/// @nodoc
abstract mixin class _$HomeModelCopyWith<$Res> implements $HomeModelCopyWith<$Res> {
  factory _$HomeModelCopyWith(_HomeModel value, $Res Function(_HomeModel) _then) = __$HomeModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'error') bool? error,@JsonKey(name: 'error_code') int? errorCode,@JsonKey(name: 'balance') String? balance,@JsonKey(name: 'offerwalls') List<OfferWallModel>? offerWalls
});




}
/// @nodoc
class __$HomeModelCopyWithImpl<$Res>
    implements _$HomeModelCopyWith<$Res> {
  __$HomeModelCopyWithImpl(this._self, this._then);

  final _HomeModel _self;
  final $Res Function(_HomeModel) _then;

/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = freezed,Object? errorCode = freezed,Object? balance = freezed,Object? offerWalls = freezed,}) {
  return _then(_HomeModel(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as int?,balance: freezed == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as String?,offerWalls: freezed == offerWalls ? _self._offerWalls : offerWalls // ignore: cast_nullable_to_non_nullable
as List<OfferWallModel>?,
  ));
}


}


/// @nodoc
mixin _$OfferWallModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'offer_id') String? get id;@JsonKey(name: 'offer_title') String? get title;@JsonKey(name: 'offer_subtitle') String? get subtitle;@JsonKey(name: 'offer_url') String? get url;@JsonKey(name: 'offer_type') String? get type;@JsonKey(name: 'offer_points') String? get points;@JsonKey(name: 'offer_featured') bool? get featured;@JsonKey(name: 'offer_thumbnail') String? get thumbnail;@JsonKey(name: 'offer_position') String? get position;@JsonKey(name: 'offer_status') String? get status;
/// Create a copy of OfferWallModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfferWallModelCopyWith<OfferWallModel> get copyWith => _$OfferWallModelCopyWithImpl<OfferWallModel>(this as OfferWallModel, _$identity);

  /// Serializes this OfferWallModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OfferWallModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('subtitle', subtitle))..add(DiagnosticsProperty('url', url))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('points', points))..add(DiagnosticsProperty('featured', featured))..add(DiagnosticsProperty('thumbnail', thumbnail))..add(DiagnosticsProperty('position', position))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OfferWallModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.url, url) || other.url == url)&&(identical(other.type, type) || other.type == type)&&(identical(other.points, points) || other.points == points)&&(identical(other.featured, featured) || other.featured == featured)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.position, position) || other.position == position)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,subtitle,url,type,points,featured,thumbnail,position,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OfferWallModel(id: $id, title: $title, subtitle: $subtitle, url: $url, type: $type, points: $points, featured: $featured, thumbnail: $thumbnail, position: $position, status: $status)';
}


}

/// @nodoc
abstract mixin class $OfferWallModelCopyWith<$Res>  {
  factory $OfferWallModelCopyWith(OfferWallModel value, $Res Function(OfferWallModel) _then) = _$OfferWallModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'offer_id') String? id,@JsonKey(name: 'offer_title') String? title,@JsonKey(name: 'offer_subtitle') String? subtitle,@JsonKey(name: 'offer_url') String? url,@JsonKey(name: 'offer_type') String? type,@JsonKey(name: 'offer_points') String? points,@JsonKey(name: 'offer_featured') bool? featured,@JsonKey(name: 'offer_thumbnail') String? thumbnail,@JsonKey(name: 'offer_position') String? position,@JsonKey(name: 'offer_status') String? status
});




}
/// @nodoc
class _$OfferWallModelCopyWithImpl<$Res>
    implements $OfferWallModelCopyWith<$Res> {
  _$OfferWallModelCopyWithImpl(this._self, this._then);

  final OfferWallModel _self;
  final $Res Function(OfferWallModel) _then;

/// Create a copy of OfferWallModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? subtitle = freezed,Object? url = freezed,Object? type = freezed,Object? points = freezed,Object? featured = freezed,Object? thumbnail = freezed,Object? position = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,points: freezed == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as String?,featured: freezed == featured ? _self.featured : featured // ignore: cast_nullable_to_non_nullable
as bool?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OfferWallModel].
extension OfferWallModelPatterns on OfferWallModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OfferWallModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OfferWallModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OfferWallModel value)  $default,){
final _that = this;
switch (_that) {
case _OfferWallModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OfferWallModel value)?  $default,){
final _that = this;
switch (_that) {
case _OfferWallModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'offer_id')  String? id, @JsonKey(name: 'offer_title')  String? title, @JsonKey(name: 'offer_subtitle')  String? subtitle, @JsonKey(name: 'offer_url')  String? url, @JsonKey(name: 'offer_type')  String? type, @JsonKey(name: 'offer_points')  String? points, @JsonKey(name: 'offer_featured')  bool? featured, @JsonKey(name: 'offer_thumbnail')  String? thumbnail, @JsonKey(name: 'offer_position')  String? position, @JsonKey(name: 'offer_status')  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OfferWallModel() when $default != null:
return $default(_that.id,_that.title,_that.subtitle,_that.url,_that.type,_that.points,_that.featured,_that.thumbnail,_that.position,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'offer_id')  String? id, @JsonKey(name: 'offer_title')  String? title, @JsonKey(name: 'offer_subtitle')  String? subtitle, @JsonKey(name: 'offer_url')  String? url, @JsonKey(name: 'offer_type')  String? type, @JsonKey(name: 'offer_points')  String? points, @JsonKey(name: 'offer_featured')  bool? featured, @JsonKey(name: 'offer_thumbnail')  String? thumbnail, @JsonKey(name: 'offer_position')  String? position, @JsonKey(name: 'offer_status')  String? status)  $default,) {final _that = this;
switch (_that) {
case _OfferWallModel():
return $default(_that.id,_that.title,_that.subtitle,_that.url,_that.type,_that.points,_that.featured,_that.thumbnail,_that.position,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'offer_id')  String? id, @JsonKey(name: 'offer_title')  String? title, @JsonKey(name: 'offer_subtitle')  String? subtitle, @JsonKey(name: 'offer_url')  String? url, @JsonKey(name: 'offer_type')  String? type, @JsonKey(name: 'offer_points')  String? points, @JsonKey(name: 'offer_featured')  bool? featured, @JsonKey(name: 'offer_thumbnail')  String? thumbnail, @JsonKey(name: 'offer_position')  String? position, @JsonKey(name: 'offer_status')  String? status)?  $default,) {final _that = this;
switch (_that) {
case _OfferWallModel() when $default != null:
return $default(_that.id,_that.title,_that.subtitle,_that.url,_that.type,_that.points,_that.featured,_that.thumbnail,_that.position,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OfferWallModel extends OfferWallModel with DiagnosticableTreeMixin {
  const _OfferWallModel({@JsonKey(name: 'offer_id') this.id, @JsonKey(name: 'offer_title') this.title, @JsonKey(name: 'offer_subtitle') this.subtitle, @JsonKey(name: 'offer_url') this.url, @JsonKey(name: 'offer_type') this.type, @JsonKey(name: 'offer_points') this.points, @JsonKey(name: 'offer_featured') this.featured, @JsonKey(name: 'offer_thumbnail') this.thumbnail, @JsonKey(name: 'offer_position') this.position, @JsonKey(name: 'offer_status') this.status}): super._();
  factory _OfferWallModel.fromJson(Map<String, dynamic> json) => _$OfferWallModelFromJson(json);

@override@JsonKey(name: 'offer_id') final  String? id;
@override@JsonKey(name: 'offer_title') final  String? title;
@override@JsonKey(name: 'offer_subtitle') final  String? subtitle;
@override@JsonKey(name: 'offer_url') final  String? url;
@override@JsonKey(name: 'offer_type') final  String? type;
@override@JsonKey(name: 'offer_points') final  String? points;
@override@JsonKey(name: 'offer_featured') final  bool? featured;
@override@JsonKey(name: 'offer_thumbnail') final  String? thumbnail;
@override@JsonKey(name: 'offer_position') final  String? position;
@override@JsonKey(name: 'offer_status') final  String? status;

/// Create a copy of OfferWallModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OfferWallModelCopyWith<_OfferWallModel> get copyWith => __$OfferWallModelCopyWithImpl<_OfferWallModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OfferWallModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OfferWallModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('subtitle', subtitle))..add(DiagnosticsProperty('url', url))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('points', points))..add(DiagnosticsProperty('featured', featured))..add(DiagnosticsProperty('thumbnail', thumbnail))..add(DiagnosticsProperty('position', position))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OfferWallModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.url, url) || other.url == url)&&(identical(other.type, type) || other.type == type)&&(identical(other.points, points) || other.points == points)&&(identical(other.featured, featured) || other.featured == featured)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.position, position) || other.position == position)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,subtitle,url,type,points,featured,thumbnail,position,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OfferWallModel(id: $id, title: $title, subtitle: $subtitle, url: $url, type: $type, points: $points, featured: $featured, thumbnail: $thumbnail, position: $position, status: $status)';
}


}

/// @nodoc
abstract mixin class _$OfferWallModelCopyWith<$Res> implements $OfferWallModelCopyWith<$Res> {
  factory _$OfferWallModelCopyWith(_OfferWallModel value, $Res Function(_OfferWallModel) _then) = __$OfferWallModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'offer_id') String? id,@JsonKey(name: 'offer_title') String? title,@JsonKey(name: 'offer_subtitle') String? subtitle,@JsonKey(name: 'offer_url') String? url,@JsonKey(name: 'offer_type') String? type,@JsonKey(name: 'offer_points') String? points,@JsonKey(name: 'offer_featured') bool? featured,@JsonKey(name: 'offer_thumbnail') String? thumbnail,@JsonKey(name: 'offer_position') String? position,@JsonKey(name: 'offer_status') String? status
});




}
/// @nodoc
class __$OfferWallModelCopyWithImpl<$Res>
    implements _$OfferWallModelCopyWith<$Res> {
  __$OfferWallModelCopyWithImpl(this._self, this._then);

  final _OfferWallModel _self;
  final $Res Function(_OfferWallModel) _then;

/// Create a copy of OfferWallModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? subtitle = freezed,Object? url = freezed,Object? type = freezed,Object? points = freezed,Object? featured = freezed,Object? thumbnail = freezed,Object? position = freezed,Object? status = freezed,}) {
  return _then(_OfferWallModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,points: freezed == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as String?,featured: freezed == featured ? _self.featured : featured // ignore: cast_nullable_to_non_nullable
as bool?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
