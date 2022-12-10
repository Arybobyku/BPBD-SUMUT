import 'package:bpbd/data/model/me/me_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'inventaris_model.freezed.dart';

part 'inventaris_model.g.dart';

@freezed
class InventarisModel with _$InventarisModel {
  const factory InventarisModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'nama_inv') String? namaInventory,
    @JsonKey(name: 'jmlh_inv') String? jumlahInventory,
    @JsonKey(name: 'foto_inv') String? foto,
    @JsonKey(name: 'keterangan_inv') String? keterangan,
  }) = _InventarisModel;

  factory InventarisModel.fromJson(Map<String, dynamic> json) =>
      _$InventarisModelFromJson(json);
}