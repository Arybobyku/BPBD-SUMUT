// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permintaan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Permintaan _$$_PermintaanFromJson(Map<String, dynamic> json) =>
    _$_Permintaan(
      id: json['id'] as int?,
      idUser: json['id_user'] as int?,
      kabupaten: json['kabupaten'] as String?,
      kecamatan: json['kecamatan'] as String?,
      kelurahan: json['kelurahan'] as String?,
      alamat: json['alamat'] as String?,
      jenisBencana: json['jenis_bencana'] as String?,
      permintaanBarang: (json['permintaan_barang'] as List<dynamic>?)
          ?.map((e) => PermintaanItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PermintaanToJson(_$_Permintaan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_user': instance.idUser,
      'kabupaten': instance.kabupaten,
      'kecamatan': instance.kecamatan,
      'kelurahan': instance.kelurahan,
      'alamat': instance.alamat,
      'jenis_bencana': instance.jenisBencana,
      'permintaan_barang': instance.permintaanBarang,
    };
