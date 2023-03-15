// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'logistik.freezed.dart';

part 'logistik.g.dart';

@freezed
class Logistik with _$Logistik {
  const factory Logistik({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "nama_logistik") required String nama,
    @JsonKey(name: "jumlah_logistik") required int jumlah,
    @JsonKey(name: "foto_logistik") required String foto,
    @JsonKey(name: "kategori_logistik") required String kategori,
    @JsonKey(name: "tahun_logistik") required String tahun,
    @JsonKey(name: "keterangan_logistik") required String keterangan,
  }) = _Logistik;

  factory Logistik.fromJson(Map<String, dynamic> json) =>
      _$LogistikFromJson(json);
}
