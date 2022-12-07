// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'kota_model.freezed.dart';

part 'kota_model.g.dart';

@freezed
class KotaModel with _$KotaModel {
  const factory KotaModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "id_zona") required int idZona,
    @JsonKey(name: "nama_kota") required String namaKota,
    @JsonKey(name: "kode_kota") required String kodeKota,
  }) = _KotaModel;

  factory KotaModel.fromJson(Map<String, dynamic> json) =>
      _$KotaModelFromJson(json);
}
