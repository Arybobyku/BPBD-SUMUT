import 'package:freezed_annotation/freezed_annotation.dart';

part 'me_model.freezed.dart';

part 'me_model.g.dart';

@freezed
class MeModel with _$MeModel {
  const factory MeModel({
    int? id,
    @JsonKey(name: "name") String? name,
    int? role,
    String? nip,
    @JsonKey(name: "no_hp") String? noHp,
    @JsonKey(name: "id_kota") int? idKota,
    String? email,
    String? password,
  }) = _MeModel;

  factory MeModel.fromJson(Map<String, dynamic> json) =>
      _$MeModelFromJson(json);
}
