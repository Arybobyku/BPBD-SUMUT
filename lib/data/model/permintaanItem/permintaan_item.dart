// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'permintaan_item.freezed.dart';

part 'permintaan_item.g.dart';

@freezed
class PermintaanItem with _$PermintaanItem {
  const factory PermintaanItem({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "nama_permintaan_barang") String? nama,
    @JsonKey(name: "jumlah_permintaan_barang") int? jumlah,
  }) = _PermintaanItem;

  factory PermintaanItem.fromJson(Map<String, dynamic> json) =>
      _$PermintaanItemFromJson(json);
}
