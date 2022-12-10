// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthenticationModel _$$_AuthenticationModelFromJson(
        Map<String, dynamic> json) =>
    _$_AuthenticationModel(
      accessToken: json['access-token'] as String?,
      tokenType: json['token-type'] as String?,
      meModel: json['user'] == null
          ? null
          : MeModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AuthenticationModelToJson(
        _$_AuthenticationModel instance) =>
    <String, dynamic>{
      'access-token': instance.accessToken,
      'token-type': instance.tokenType,
      'user': instance.meModel,
    };
