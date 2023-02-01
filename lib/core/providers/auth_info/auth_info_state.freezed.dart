// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthInfoState {
  String get token => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthInfoStateCopyWith<AuthInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthInfoStateCopyWith<$Res> {
  factory $AuthInfoStateCopyWith(
          AuthInfoState value, $Res Function(AuthInfoState) then) =
      _$AuthInfoStateCopyWithImpl<$Res, AuthInfoState>;
  @useResult
  $Res call({String token, String refreshToken, String email});
}

/// @nodoc
class _$AuthInfoStateCopyWithImpl<$Res, $Val extends AuthInfoState>
    implements $AuthInfoStateCopyWith<$Res> {
  _$AuthInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? refreshToken = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthInfoStateCopyWith<$Res>
    implements $AuthInfoStateCopyWith<$Res> {
  factory _$$_AuthInfoStateCopyWith(
          _$_AuthInfoState value, $Res Function(_$_AuthInfoState) then) =
      __$$_AuthInfoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, String refreshToken, String email});
}

/// @nodoc
class __$$_AuthInfoStateCopyWithImpl<$Res>
    extends _$AuthInfoStateCopyWithImpl<$Res, _$_AuthInfoState>
    implements _$$_AuthInfoStateCopyWith<$Res> {
  __$$_AuthInfoStateCopyWithImpl(
      _$_AuthInfoState _value, $Res Function(_$_AuthInfoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? refreshToken = null,
    Object? email = null,
  }) {
    return _then(_$_AuthInfoState(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthInfoState implements _AuthInfoState {
  const _$_AuthInfoState(
      {this.token = '', this.refreshToken = '', this.email = ''});

  @override
  @JsonKey()
  final String token;
  @override
  @JsonKey()
  final String refreshToken;
  @override
  @JsonKey()
  final String email;

  @override
  String toString() {
    return 'AuthInfoState(token: $token, refreshToken: $refreshToken, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthInfoState &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, refreshToken, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthInfoStateCopyWith<_$_AuthInfoState> get copyWith =>
      __$$_AuthInfoStateCopyWithImpl<_$_AuthInfoState>(this, _$identity);
}

abstract class _AuthInfoState implements AuthInfoState {
  const factory _AuthInfoState(
      {final String token,
      final String refreshToken,
      final String email}) = _$_AuthInfoState;

  @override
  String get token;
  @override
  String get refreshToken;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_AuthInfoStateCopyWith<_$_AuthInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}
