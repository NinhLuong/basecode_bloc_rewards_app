// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payouts_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PayoutsEntity {

 List<PayoutEntity> get payouts; double get balance; double get minPayout; double get redeemPercent;
/// Create a copy of PayoutsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PayoutsEntityCopyWith<PayoutsEntity> get copyWith => _$PayoutsEntityCopyWithImpl<PayoutsEntity>(this as PayoutsEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PayoutsEntity&&const DeepCollectionEquality().equals(other.payouts, payouts)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.minPayout, minPayout) || other.minPayout == minPayout)&&(identical(other.redeemPercent, redeemPercent) || other.redeemPercent == redeemPercent));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(payouts),balance,minPayout,redeemPercent);

@override
String toString() {
  return 'PayoutsEntity(payouts: $payouts, balance: $balance, minPayout: $minPayout, redeemPercent: $redeemPercent)';
}


}

/// @nodoc
abstract mixin class $PayoutsEntityCopyWith<$Res>  {
  factory $PayoutsEntityCopyWith(PayoutsEntity value, $Res Function(PayoutsEntity) _then) = _$PayoutsEntityCopyWithImpl;
@useResult
$Res call({
 List<PayoutEntity> payouts, double balance, double minPayout, double redeemPercent
});




}
/// @nodoc
class _$PayoutsEntityCopyWithImpl<$Res>
    implements $PayoutsEntityCopyWith<$Res> {
  _$PayoutsEntityCopyWithImpl(this._self, this._then);

  final PayoutsEntity _self;
  final $Res Function(PayoutsEntity) _then;

/// Create a copy of PayoutsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? payouts = null,Object? balance = null,Object? minPayout = null,Object? redeemPercent = null,}) {
  return _then(_self.copyWith(
payouts: null == payouts ? _self.payouts : payouts // ignore: cast_nullable_to_non_nullable
as List<PayoutEntity>,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double,minPayout: null == minPayout ? _self.minPayout : minPayout // ignore: cast_nullable_to_non_nullable
as double,redeemPercent: null == redeemPercent ? _self.redeemPercent : redeemPercent // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [PayoutsEntity].
extension PayoutsEntityPatterns on PayoutsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PayoutsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PayoutsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PayoutsEntity value)  $default,){
final _that = this;
switch (_that) {
case _PayoutsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PayoutsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PayoutsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PayoutEntity> payouts,  double balance,  double minPayout,  double redeemPercent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PayoutsEntity() when $default != null:
return $default(_that.payouts,_that.balance,_that.minPayout,_that.redeemPercent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PayoutEntity> payouts,  double balance,  double minPayout,  double redeemPercent)  $default,) {final _that = this;
switch (_that) {
case _PayoutsEntity():
return $default(_that.payouts,_that.balance,_that.minPayout,_that.redeemPercent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PayoutEntity> payouts,  double balance,  double minPayout,  double redeemPercent)?  $default,) {final _that = this;
switch (_that) {
case _PayoutsEntity() when $default != null:
return $default(_that.payouts,_that.balance,_that.minPayout,_that.redeemPercent);case _:
  return null;

}
}

}

/// @nodoc


class _PayoutsEntity extends PayoutsEntity {
  const _PayoutsEntity({required final  List<PayoutEntity> payouts, required this.balance, required this.minPayout, required this.redeemPercent}): _payouts = payouts,super._();
  

 final  List<PayoutEntity> _payouts;
@override List<PayoutEntity> get payouts {
  if (_payouts is EqualUnmodifiableListView) return _payouts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_payouts);
}

@override final  double balance;
@override final  double minPayout;
@override final  double redeemPercent;

/// Create a copy of PayoutsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PayoutsEntityCopyWith<_PayoutsEntity> get copyWith => __$PayoutsEntityCopyWithImpl<_PayoutsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PayoutsEntity&&const DeepCollectionEquality().equals(other._payouts, _payouts)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.minPayout, minPayout) || other.minPayout == minPayout)&&(identical(other.redeemPercent, redeemPercent) || other.redeemPercent == redeemPercent));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_payouts),balance,minPayout,redeemPercent);

@override
String toString() {
  return 'PayoutsEntity(payouts: $payouts, balance: $balance, minPayout: $minPayout, redeemPercent: $redeemPercent)';
}


}

/// @nodoc
abstract mixin class _$PayoutsEntityCopyWith<$Res> implements $PayoutsEntityCopyWith<$Res> {
  factory _$PayoutsEntityCopyWith(_PayoutsEntity value, $Res Function(_PayoutsEntity) _then) = __$PayoutsEntityCopyWithImpl;
@override @useResult
$Res call({
 List<PayoutEntity> payouts, double balance, double minPayout, double redeemPercent
});




}
/// @nodoc
class __$PayoutsEntityCopyWithImpl<$Res>
    implements _$PayoutsEntityCopyWith<$Res> {
  __$PayoutsEntityCopyWithImpl(this._self, this._then);

  final _PayoutsEntity _self;
  final $Res Function(_PayoutsEntity) _then;

/// Create a copy of PayoutsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? payouts = null,Object? balance = null,Object? minPayout = null,Object? redeemPercent = null,}) {
  return _then(_PayoutsEntity(
payouts: null == payouts ? _self._payouts : payouts // ignore: cast_nullable_to_non_nullable
as List<PayoutEntity>,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double,minPayout: null == minPayout ? _self.minPayout : minPayout // ignore: cast_nullable_to_non_nullable
as double,redeemPercent: null == redeemPercent ? _self.redeemPercent : redeemPercent // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$PayoutEntity {

 String get id; String get title; String get subtitle; String get message; String get thumbnail; double get cost;
/// Create a copy of PayoutEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PayoutEntityCopyWith<PayoutEntity> get copyWith => _$PayoutEntityCopyWithImpl<PayoutEntity>(this as PayoutEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PayoutEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.message, message) || other.message == message)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.cost, cost) || other.cost == cost));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,subtitle,message,thumbnail,cost);

@override
String toString() {
  return 'PayoutEntity(id: $id, title: $title, subtitle: $subtitle, message: $message, thumbnail: $thumbnail, cost: $cost)';
}


}

/// @nodoc
abstract mixin class $PayoutEntityCopyWith<$Res>  {
  factory $PayoutEntityCopyWith(PayoutEntity value, $Res Function(PayoutEntity) _then) = _$PayoutEntityCopyWithImpl;
@useResult
$Res call({
 String id, String title, String subtitle, String message, String thumbnail, double cost
});




}
/// @nodoc
class _$PayoutEntityCopyWithImpl<$Res>
    implements $PayoutEntityCopyWith<$Res> {
  _$PayoutEntityCopyWithImpl(this._self, this._then);

  final PayoutEntity _self;
  final $Res Function(PayoutEntity) _then;

/// Create a copy of PayoutEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? subtitle = null,Object? message = null,Object? thumbnail = null,Object? cost = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [PayoutEntity].
extension PayoutEntityPatterns on PayoutEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PayoutEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PayoutEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PayoutEntity value)  $default,){
final _that = this;
switch (_that) {
case _PayoutEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PayoutEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PayoutEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String subtitle,  String message,  String thumbnail,  double cost)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PayoutEntity() when $default != null:
return $default(_that.id,_that.title,_that.subtitle,_that.message,_that.thumbnail,_that.cost);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String subtitle,  String message,  String thumbnail,  double cost)  $default,) {final _that = this;
switch (_that) {
case _PayoutEntity():
return $default(_that.id,_that.title,_that.subtitle,_that.message,_that.thumbnail,_that.cost);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String subtitle,  String message,  String thumbnail,  double cost)?  $default,) {final _that = this;
switch (_that) {
case _PayoutEntity() when $default != null:
return $default(_that.id,_that.title,_that.subtitle,_that.message,_that.thumbnail,_that.cost);case _:
  return null;

}
}

}

/// @nodoc


class _PayoutEntity extends PayoutEntity {
  const _PayoutEntity({required this.id, required this.title, required this.subtitle, required this.message, required this.thumbnail, required this.cost}): super._();
  

@override final  String id;
@override final  String title;
@override final  String subtitle;
@override final  String message;
@override final  String thumbnail;
@override final  double cost;

/// Create a copy of PayoutEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PayoutEntityCopyWith<_PayoutEntity> get copyWith => __$PayoutEntityCopyWithImpl<_PayoutEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PayoutEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.message, message) || other.message == message)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.cost, cost) || other.cost == cost));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,subtitle,message,thumbnail,cost);

@override
String toString() {
  return 'PayoutEntity(id: $id, title: $title, subtitle: $subtitle, message: $message, thumbnail: $thumbnail, cost: $cost)';
}


}

/// @nodoc
abstract mixin class _$PayoutEntityCopyWith<$Res> implements $PayoutEntityCopyWith<$Res> {
  factory _$PayoutEntityCopyWith(_PayoutEntity value, $Res Function(_PayoutEntity) _then) = __$PayoutEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String subtitle, String message, String thumbnail, double cost
});




}
/// @nodoc
class __$PayoutEntityCopyWithImpl<$Res>
    implements _$PayoutEntityCopyWith<$Res> {
  __$PayoutEntityCopyWithImpl(this._self, this._then);

  final _PayoutEntity _self;
  final $Res Function(_PayoutEntity) _then;

/// Create a copy of PayoutEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? subtitle = null,Object? message = null,Object? thumbnail = null,Object? cost = null,}) {
  return _then(_PayoutEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
