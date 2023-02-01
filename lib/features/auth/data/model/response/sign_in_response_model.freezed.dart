// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignInResponseModel _$SignInResponseModelFromJson(Map<String, dynamic> json) {
  return _SignInResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SignInResponseModel {
  @JsonKey(name: 'access')
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh')
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInResponseModelCopyWith<SignInResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInResponseModelCopyWith<$Res> {
  factory $SignInResponseModelCopyWith(
          SignInResponseModel value, $Res Function(SignInResponseModel) then) =
      _$SignInResponseModelCopyWithImpl<$Res, SignInResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access') String token,
      @JsonKey(name: 'refresh') String refreshToken});
}

/// @nodoc
class _$SignInResponseModelCopyWithImpl<$Res, $Val extends SignInResponseModel>
    implements $SignInResponseModelCopyWith<$Res> {
  _$SignInResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? refreshToken = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignInResponseModelCopyWith<$Res>
    implements $SignInResponseModelCopyWith<$Res> {
  factory _$$_SignInResponseModelCopyWith(_$_SignInResponseModel value,
          $Res Function(_$_SignInResponseModel) then) =
      __$$_SignInResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access') String token,
      @JsonKey(name: 'refresh') String refreshToken});
}

/// @nodoc
class __$$_SignInResponseModelCopyWithImpl<$Res>
    extends _$SignInResponseModelCopyWithImpl<$Res, _$_SignInResponseModel>
    implements _$$_SignInResponseModelCopyWith<$Res> {
  __$$_SignInResponseModelCopyWithImpl(_$_SignInResponseModel _value,
      $Res Function(_$_SignInResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? refreshToken = null,
  }) {
    return _then(_$_SignInResponseModel(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignInResponseModel implements _SignInResponseModel {
  const _$_SignInResponseModel(
      {@JsonKey(name: 'access') required this.token,
      @JsonKey(name: 'refresh') required this.refreshToken});

  factory _$_SignInResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_SignInResponseModelFromJson(json);

  @override
  @JsonKey(name: 'access')
  final String token;
  @override
  @JsonKey(name: 'refresh')
  final String refreshToken;

  @override
  String toString() {
    return 'SignInResponseModel(token: $token, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInResponseModel &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInResponseModelCopyWith<_$_SignInResponseModel> get copyWith =>
      __$$_SignInResponseModelCopyWithImpl<_$_SignInResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignInResponseModelToJson(
      this,
    );
  }
}

abstract class _SignInResponseModel implements SignInResponseModel {
  const factory _SignInResponseModel(
          {@JsonKey(name: 'access') required final String token,
          @JsonKey(name: 'refresh') required final String refreshToken}) =
      _$_SignInResponseModel;

  factory _SignInResponseModel.fromJson(Map<String, dynamic> json) =
      _$_SignInResponseModel.fromJson;

  @override
  @JsonKey(name: 'access')
  String get token;
  @override
  @JsonKey(name: 'refresh')
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$_SignInResponseModelCopyWith<_$_SignInResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
