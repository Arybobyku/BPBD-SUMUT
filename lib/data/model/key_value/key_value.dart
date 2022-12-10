import 'package:bpbd/data/model/me/me_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'key_value.freezed.dart';

part 'key_value.g.dart';

@freezed
class KeyValue with _$KeyValue {
  const factory KeyValue({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
  }) = _KeyValue;

  factory KeyValue.fromJson(Map<String, dynamic> json) =>
      _$KeyValueFromJson(json);
}