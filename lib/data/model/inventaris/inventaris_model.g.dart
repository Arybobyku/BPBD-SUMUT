// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventaris_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InventarisModel _$$_InventarisModelFromJson(Map<String, dynamic> json) =>
    _$_InventarisModel(
      id: json['id'] as int?,
      namaInventory: json['nama_inv'] as String?,
      jumlahInventory: json['jmlh_inv'] as String?,
      foto: json['foto_inv'] as String?,
      keterangan: json['keterangan_inv'] as String?,
    );

Map<String, dynamic> _$$_InventarisModelToJson(_$_InventarisModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama_inv': instance.namaInventory,
      'jmlh_inv': instance.jumlahInventory,
      'foto_inv': instance.foto,
      'keterangan_inv': instance.keterangan,
    };
