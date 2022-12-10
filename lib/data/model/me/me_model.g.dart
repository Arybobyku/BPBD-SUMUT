// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'me_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MeModel _$$_MeModelFromJson(Map<String, dynamic> json) => _$_MeModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      role: json['role'] as int?,
      nip: json['nip'] as String?,
      noHp: json['no_hp'] as String?,
      idKota: json['id_kota'] as int?,
      kotaModel: json['kota'] == null
          ? null
          : KotaModel.fromJson(json['kota'] as Map<String, dynamic>),
      email: json['email'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$_MeModelToJson(_$_MeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'role': instance.role,
      'nip': instance.nip,
      'no_hp': instance.noHp,
      'id_kota': instance.idKota,
      'kota': instance.kotaModel,
      'email': instance.email,
      'password': instance.password,
    };
