// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_users_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResponseUsersModel {
  dynamic get users => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResponseUsersModelCopyWith<ResponseUsersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseUsersModelCopyWith<$Res> {
  factory $ResponseUsersModelCopyWith(
          ResponseUsersModel value, $Res Function(ResponseUsersModel) then) =
      _$ResponseUsersModelCopyWithImpl<$Res, ResponseUsersModel>;
  @useResult
  $Res call({dynamic users});
}

/// @nodoc
class _$ResponseUsersModelCopyWithImpl<$Res, $Val extends ResponseUsersModel>
    implements $ResponseUsersModelCopyWith<$Res> {
  _$ResponseUsersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseUsersModelCopyWith<$Res>
    implements $ResponseUsersModelCopyWith<$Res> {
  factory _$$_ResponseUsersModelCopyWith(_$_ResponseUsersModel value,
          $Res Function(_$_ResponseUsersModel) then) =
      __$$_ResponseUsersModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic users});
}

/// @nodoc
class __$$_ResponseUsersModelCopyWithImpl<$Res>
    extends _$ResponseUsersModelCopyWithImpl<$Res, _$_ResponseUsersModel>
    implements _$$_ResponseUsersModelCopyWith<$Res> {
  __$$_ResponseUsersModelCopyWithImpl(
      _$_ResponseUsersModel _value, $Res Function(_$_ResponseUsersModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_$_ResponseUsersModel(
      users: freezed == users ? _value.users! : users,
    ));
  }
}

/// @nodoc

class _$_ResponseUsersModel implements _ResponseUsersModel {
  const _$_ResponseUsersModel({this.users = const <UsersEntity>[]});

  @override
  @JsonKey()
  final dynamic users;

  @override
  String toString() {
    return 'ResponseUsersModel(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseUsersModel &&
            const DeepCollectionEquality().equals(other.users, users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseUsersModelCopyWith<_$_ResponseUsersModel> get copyWith =>
      __$$_ResponseUsersModelCopyWithImpl<_$_ResponseUsersModel>(
          this, _$identity);
}

abstract class _ResponseUsersModel implements ResponseUsersModel {
  const factory _ResponseUsersModel({final dynamic users}) =
      _$_ResponseUsersModel;

  @override
  dynamic get users;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseUsersModelCopyWith<_$_ResponseUsersModel> get copyWith =>
      throw _privateConstructorUsedError;
}
