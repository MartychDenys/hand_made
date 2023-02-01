// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersEntity {
  dynamic get users => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersEntityCopyWith<UsersEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersEntityCopyWith<$Res> {
  factory $UsersEntityCopyWith(
          UsersEntity value, $Res Function(UsersEntity) then) =
      _$UsersEntityCopyWithImpl<$Res, UsersEntity>;
  @useResult
  $Res call({dynamic users});
}

/// @nodoc
class _$UsersEntityCopyWithImpl<$Res, $Val extends UsersEntity>
    implements $UsersEntityCopyWith<$Res> {
  _$UsersEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$_UsersEntityCopyWith<$Res>
    implements $UsersEntityCopyWith<$Res> {
  factory _$$_UsersEntityCopyWith(
          _$_UsersEntity value, $Res Function(_$_UsersEntity) then) =
      __$$_UsersEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic users});
}

/// @nodoc
class __$$_UsersEntityCopyWithImpl<$Res>
    extends _$UsersEntityCopyWithImpl<$Res, _$_UsersEntity>
    implements _$$_UsersEntityCopyWith<$Res> {
  __$$_UsersEntityCopyWithImpl(
      _$_UsersEntity _value, $Res Function(_$_UsersEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_$_UsersEntity(
      users: freezed == users ? _value.users! : users,
    ));
  }
}

/// @nodoc

class _$_UsersEntity implements _UsersEntity {
  const _$_UsersEntity({this.users = const <UserEntity>[]});

  @override
  @JsonKey()
  final dynamic users;

  @override
  String toString() {
    return 'UsersEntity(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsersEntity &&
            const DeepCollectionEquality().equals(other.users, users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsersEntityCopyWith<_$_UsersEntity> get copyWith =>
      __$$_UsersEntityCopyWithImpl<_$_UsersEntity>(this, _$identity);
}

abstract class _UsersEntity implements UsersEntity {
  const factory _UsersEntity({final dynamic users}) = _$_UsersEntity;

  @override
  dynamic get users;
  @override
  @JsonKey(ignore: true)
  _$$_UsersEntityCopyWith<_$_UsersEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) {
  return _UserEntity.fromJson(json);
}

/// @nodoc
mixin _$UserEntity {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserEntityCopyWith<UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEntityCopyWith<$Res> {
  factory $UserEntityCopyWith(
          UserEntity value, $Res Function(UserEntity) then) =
      _$UserEntityCopyWithImpl<$Res, UserEntity>;
  @useResult
  $Res call({int id, String username, String email});
}

/// @nodoc
class _$UserEntityCopyWithImpl<$Res, $Val extends UserEntity>
    implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserEntityCopyWith<$Res>
    implements $UserEntityCopyWith<$Res> {
  factory _$$_UserEntityCopyWith(
          _$_UserEntity value, $Res Function(_$_UserEntity) then) =
      __$$_UserEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String username, String email});
}

/// @nodoc
class __$$_UserEntityCopyWithImpl<$Res>
    extends _$UserEntityCopyWithImpl<$Res, _$_UserEntity>
    implements _$$_UserEntityCopyWith<$Res> {
  __$$_UserEntityCopyWithImpl(
      _$_UserEntity _value, $Res Function(_$_UserEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
  }) {
    return _then(_$_UserEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserEntity implements _UserEntity {
  const _$_UserEntity(
      {required this.id, required this.username, required this.email});

  factory _$_UserEntity.fromJson(Map<String, dynamic> json) =>
      _$$_UserEntityFromJson(json);

  @override
  final int id;
  @override
  final String username;
  @override
  final String email;

  @override
  String toString() {
    return 'UserEntity(id: $id, username: $username, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserEntityCopyWith<_$_UserEntity> get copyWith =>
      __$$_UserEntityCopyWithImpl<_$_UserEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserEntityToJson(
      this,
    );
  }
}

abstract class _UserEntity implements UserEntity {
  const factory _UserEntity(
      {required final int id,
      required final String username,
      required final String email}) = _$_UserEntity;

  factory _UserEntity.fromJson(Map<String, dynamic> json) =
      _$_UserEntity.fromJson;

  @override
  int get id;
  @override
  String get username;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_UserEntityCopyWith<_$_UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
