// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignInResponseModel _$$_SignInResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_SignInResponseModel(
      token: json['access'] as String,
      refreshToken: json['refresh'] as String,
    );

Map<String, dynamic> _$$_SignInResponseModelToJson(
        _$_SignInResponseModel instance) =>
    <String, dynamic>{
      'access': instance.token,
      'refresh': instance.refreshToken,
    };
