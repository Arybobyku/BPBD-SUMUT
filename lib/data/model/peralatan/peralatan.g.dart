// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peralatan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Peralatan _$$_PeralatanFromJson(Map<String, dynamic> json) => _$_Peralatan(
      id: json['id'] as int,
      nama: json['nama'] as String,
      jumlah: json['jumlah'] as int,
      foto: json['foto'] as String,
      kategori: json['kategori'] as String,
      tahun: json['tahun'] as String,
      keterangan: json['keterangan'] as String,
    );

Map<String, dynamic> _$$_PeralatanToJson(_$_Peralatan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama': instance.nama,
      'jumlah': instance.jumlah,
      'foto': instance.foto,
      'kategori': instance.kategori,
      'tahun': instance.tahun,
      'keterangan': instance.keterangan,
    };
