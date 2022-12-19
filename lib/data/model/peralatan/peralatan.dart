// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'peralatan.freezed.dart';

part 'peralatan.g.dart';

@freezed
class Peralatan with _$Peralatan {
  const factory Peralatan({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "nama") required String nama,
    @JsonKey(name: "jumlah") required String jumlah,
    @JsonKey(name: "foto") required String foto,
    @JsonKey(name: "kategori") required String kategori,
    @JsonKey(name: "tahun") required String tahun,
    @JsonKey(name: "keterangan") required String keterangan,
  }) = _Peralatan;

  factory Peralatan.fromJson(Map<String, dynamic> json) =>
      _$PeralatanFromJson(json);
}
