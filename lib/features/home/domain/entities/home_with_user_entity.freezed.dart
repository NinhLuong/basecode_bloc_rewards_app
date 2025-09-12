// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_with_user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeWithUserEntity {
  HomeEntity get homeData => throw _privateConstructorUsedError;
  UserEntity get userData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeWithUserEntityCopyWith<HomeWithUserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeWithUserEntityCopyWith<$Res> {
  factory $HomeWithUserEntityCopyWith(
          HomeWithUserEntity value, $Res Function(HomeWithUserEntity) then) =
      _$HomeWithUserEntityCopyWithImpl<$Res, HomeWithUserEntity>;
  @useResult
  $Res call({HomeEntity homeData, UserEntity userData});
}

/// @nodoc
class _$HomeWithUserEntityCopyWithImpl<$Res, $Val extends HomeWithUserEntity>
    implements $HomeWithUserEntityCopyWith<$Res> {
  _$HomeWithUserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeData = null,
    Object? userData = null,
  }) {
    return _then(_value.copyWith(
      homeData: null == homeData
          ? _value.homeData
          : homeData // ignore: cast_nullable_to_non_nullable
              as HomeEntity,
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeWithUserEntityCopyWith<$Res>
    implements $HomeWithUserEntityCopyWith<$Res> {
  factory _$$_HomeWithUserEntityCopyWith(_$_HomeWithUserEntity value,
          $Res Function(_$_HomeWithUserEntity) then) =
      __$$_HomeWithUserEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeEntity homeData, UserEntity userData});
}

/// @nodoc
class __$$_HomeWithUserEntityCopyWithImpl<$Res>
    extends _$HomeWithUserEntityCopyWithImpl<$Res, _$_HomeWithUserEntity>
    implements _$$_HomeWithUserEntityCopyWith<$Res> {
  __$$_HomeWithUserEntityCopyWithImpl(
      _$_HomeWithUserEntity _value, $Res Function(_$_HomeWithUserEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeData = null,
    Object? userData = null,
  }) {
    return _then(_$_HomeWithUserEntity(
      homeData: null == homeData
          ? _value.homeData
          : homeData // ignore: cast_nullable_to_non_nullable
              as HomeEntity,
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$_HomeWithUserEntity extends _HomeWithUserEntity {
  const _$_HomeWithUserEntity(
      {required this.homeData, required this.userData})
      : super._();

  @override
  final HomeEntity homeData;
  @override
  final UserEntity userData;

  @override
  String toString() {
    return 'HomeWithUserEntity(homeData: $homeData, userData: $userData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeWithUserEntity &&
            (identical(other.homeData, homeData) ||
                other.homeData == homeData) &&
            (identical(other.userData, userData) ||
                other.userData == userData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, homeData, userData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeWithUserEntityCopyWith<_$_HomeWithUserEntity> get copyWith =>
      __$$_HomeWithUserEntityCopyWithImpl<_$_HomeWithUserEntity>(
          this, _$identity);
}

abstract class _HomeWithUserEntity extends HomeWithUserEntity {
  const factory _HomeWithUserEntity(
      {required final HomeEntity homeData,
      required final UserEntity userData}) = _$_HomeWithUserEntity;
  const _HomeWithUserEntity._() : super._();

  @override
  HomeEntity get homeData;
  @override
  UserEntity get userData;
  @override
  @JsonKey(ignore: true)
  _$$_HomeWithUserEntityCopyWith<_$_HomeWithUserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
