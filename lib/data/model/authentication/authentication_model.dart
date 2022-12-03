import 'package:bpbd/data/model/me/me_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'authentication_model.freezed.dart';

part 'authentication_model.g.dart';

@freezed
class AuthenticationModel with _$AuthenticationModel {
  const factory AuthenticationModel({
    @JsonKey(name: 'access-token') String? accessToken,
    @JsonKey(name: 'token-type') String? tokenType,
    @JsonKey(name: 'user') MeModel? meModel,
  }) = _AuthenticationModel;

  factory AuthenticationModel.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationModelFromJson(json);
}