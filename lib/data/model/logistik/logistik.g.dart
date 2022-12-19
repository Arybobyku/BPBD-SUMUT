// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logistik.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Logistik _$$_LogistikFromJson(Map<String, dynamic> json) => _$_Logistik(
      id: json['id'] as int,
      nama: json['nama_logistik'] as String,
      jumlah: json['jumlah_logistik'] as String,
      foto: json['foto_logistik'] as String,
      kategori: json['kategori_logistik'] as String,
      tahun: json['tahun_logistik'] as String,
      keterangan: json['keterangan_logistik'] as String,
    );

Map<String, dynamic> _$$_LogistikToJson(_$_Logistik instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama_logistik': instance.nama,
      'jumlah_logistik': instance.jumlah,
      'foto_logistik': instance.foto,
      'kategori_logistik': instance.kategori,
      'tahun_logistik': instance.tahun,
      'keterangan_logistik': instance.keterangan,
    };
