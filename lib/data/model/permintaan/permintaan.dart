// ignore_for_file: invalid_annotation_target

import 'package:bpbd/data/model/permintaanItem/permintaan_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'permintaan.freezed.dart';

part 'permintaan.g.dart';

@freezed
class Permintaan with _$Permintaan {
  const factory Permintaan({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "id_user") int? idUser,
    @JsonKey(name: "kabupaten") String? kabupaten,
    @JsonKey(name: "kecamatan") String? kecamatan,
    @JsonKey(name: "kelurahan") String? kelurahan,
    @JsonKey(name: "alamat") String? alamat,
    @JsonKey(name: "jenis_bencana") String? jenisBencana,
    @JsonKey(name: "permintaan_barang") List<PermintaanItem>? permintaanBarang,
  }) = _Permintaan;

  factory Permintaan.fromJson(Map<String, dynamic> json) =>
      _$PermintaanFromJson(json);
}
