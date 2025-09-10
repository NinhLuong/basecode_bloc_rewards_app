// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BaseState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BaseState<$T>()';
}


}

/// @nodoc
class $BaseStateCopyWith<T,$Res>  {
$BaseStateCopyWith(BaseState<T> _, $Res Function(BaseState<T>) __);
}


/// Adds pattern-matching-related methods to [BaseState].
extension BaseStatePatterns<T> on BaseState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( BaseStateInitial<T> value)?  initial,TResult Function( BaseStateLoading<T> value)?  loading,TResult Function( BaseStateSuccess<T> value)?  success,TResult Function( BaseStateError<T> value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case BaseStateInitial() when initial != null:
return initial(_that);case BaseStateLoading() when loading != null:
return loading(_that);case BaseStateSuccess() when success != null:
return success(_that);case BaseStateError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( BaseStateInitial<T> value)  initial,required TResult Function( BaseStateLoading<T> value)  loading,required TResult Function( BaseStateSuccess<T> value)  success,required TResult Function( BaseStateError<T> value)  error,}){
final _that = this;
switch (_that) {
case BaseStateInitial():
return initial(_that);case BaseStateLoading():
return loading(_that);case BaseStateSuccess():
return success(_that);case BaseStateError():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( BaseStateInitial<T> value)?  initial,TResult? Function( BaseStateLoading<T> value)?  loading,TResult? Function( BaseStateSuccess<T> value)?  success,TResult? Function( BaseStateError<T> value)?  error,}){
final _that = this;
switch (_that) {
case BaseStateInitial() when initial != null:
return initial(_that);case BaseStateLoading() when loading != null:
return loading(_that);case BaseStateSuccess() when success != null:
return success(_that);case BaseStateError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( T data)?  success,TResult Function( Failure failure)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case BaseStateInitial() when initial != null:
return initial();case BaseStateLoading() when loading != null:
return loading();case BaseStateSuccess() when success != null:
return success(_that.data);case BaseStateError() when error != null:
return error(_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( T data)  success,required TResult Function( Failure failure)  error,}) {final _that = this;
switch (_that) {
case BaseStateInitial():
return initial();case BaseStateLoading():
return loading();case BaseStateSuccess():
return success(_that.data);case BaseStateError():
return error(_that.failure);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( T data)?  success,TResult? Function( Failure failure)?  error,}) {final _that = this;
switch (_that) {
case BaseStateInitial() when initial != null:
return initial();case BaseStateLoading() when loading != null:
return loading();case BaseStateSuccess() when success != null:
return success(_that.data);case BaseStateError() when error != null:
return error(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class BaseStateInitial<T> implements BaseState<T> {
  const BaseStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseStateInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BaseState<$T>.initial()';
}


}




/// @nodoc


class BaseStateLoading<T> implements BaseState<T> {
  const BaseStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseStateLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BaseState<$T>.loading()';
}


}




/// @nodoc


class BaseStateSuccess<T> implements BaseState<T> {
  const BaseStateSuccess(this.data);
  

 final  T data;

/// Create a copy of BaseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseStateSuccessCopyWith<T, BaseStateSuccess<T>> get copyWith => _$BaseStateSuccessCopyWithImpl<T, BaseStateSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseStateSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BaseState<$T>.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $BaseStateSuccessCopyWith<T,$Res> implements $BaseStateCopyWith<T, $Res> {
  factory $BaseStateSuccessCopyWith(BaseStateSuccess<T> value, $Res Function(BaseStateSuccess<T>) _then) = _$BaseStateSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$BaseStateSuccessCopyWithImpl<T,$Res>
    implements $BaseStateSuccessCopyWith<T, $Res> {
  _$BaseStateSuccessCopyWithImpl(this._self, this._then);

  final BaseStateSuccess<T> _self;
  final $Res Function(BaseStateSuccess<T>) _then;

/// Create a copy of BaseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(BaseStateSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class BaseStateError<T> implements BaseState<T> {
  const BaseStateError(this.failure);
  

 final  Failure failure;

/// Create a copy of BaseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseStateErrorCopyWith<T, BaseStateError<T>> get copyWith => _$BaseStateErrorCopyWithImpl<T, BaseStateError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseStateError<T>&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'BaseState<$T>.error(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $BaseStateErrorCopyWith<T,$Res> implements $BaseStateCopyWith<T, $Res> {
  factory $BaseStateErrorCopyWith(BaseStateError<T> value, $Res Function(BaseStateError<T>) _then) = _$BaseStateErrorCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class _$BaseStateErrorCopyWithImpl<T,$Res>
    implements $BaseStateErrorCopyWith<T, $Res> {
  _$BaseStateErrorCopyWithImpl(this._self, this._then);

  final BaseStateError<T> _self;
  final $Res Function(BaseStateError<T>) _then;

/// Create a copy of BaseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(BaseStateError<T>(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

// dart format on
