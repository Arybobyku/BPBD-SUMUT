// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'kota_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KotaModel _$KotaModelFromJson(Map<String, dynamic> json) {
  return _KotaModel.fromJson(json);
}

/// @nodoc
class _$KotaModelTearOff {
  const _$KotaModelTearOff();

  _KotaModel call(
      {@JsonKey(name: "id") required int id,
      @JsonKey(name: "id_zona") required int idZona,
      @JsonKey(name: "nama_kota") required String namaKota,
      @JsonKey(name: "kode_kota") required String kodeKota}) {
    return _KotaModel(
      id: id,
      idZona: idZona,
      namaKota: namaKota,
      kodeKota: kodeKota,
    );
  }

  KotaModel fromJson(Map<String, Object?> json) {
    return KotaModel.fromJson(json);
  }
}

/// @nodoc
const $KotaModel = _$KotaModelTearOff();

/// @nodoc
mixin _$KotaModel {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "id_zona")
  int get idZona => throw _privateConstructorUsedError;
  @JsonKey(name: "nama_kota")
  String get namaKota => throw _privateConstructorUsedError;
  @JsonKey(name: "kode_kota")
  String get kodeKota => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KotaModelCopyWith<KotaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KotaModelCopyWith<$Res> {
  factory $KotaModelCopyWith(KotaModel value, $Res Function(KotaModel) then) =
      _$KotaModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "id_zona") int idZona,
      @JsonKey(name: "nama_kota") String namaKota,
      @JsonKey(name: "kode_kota") String kodeKota});
}

/// @nodoc
class _$KotaModelCopyWithImpl<$Res> implements $KotaModelCopyWith<$Res> {
  _$KotaModelCopyWithImpl(this._value, this._then);

  final KotaModel _value;
  // ignore: unused_field
  final $Res Function(KotaModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? idZona = freezed,
    Object? namaKota = freezed,
    Object? kodeKota = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      idZona: idZona == freezed
          ? _value.idZona
          : idZona // ignore: cast_nullable_to_non_nullable
              as int,
      namaKota: namaKota == freezed
          ? _value.namaKota
          : namaKota // ignore: cast_nullable_to_non_nullable
              as String,
      kodeKota: kodeKota == freezed
          ? _value.kodeKota
          : kodeKota // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$KotaModelCopyWith<$Res> implements $KotaModelCopyWith<$Res> {
  factory _$KotaModelCopyWith(
          _KotaModel value, $Res Function(_KotaModel) then) =
      __$KotaModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "id_zona") int idZona,
      @JsonKey(name: "nama_kota") String namaKota,
      @JsonKey(name: "kode_kota") String kodeKota});
}

/// @nodoc
class __$KotaModelCopyWithImpl<$Res> extends _$KotaModelCopyWithImpl<$Res>
    implements _$KotaModelCopyWith<$Res> {
  __$KotaModelCopyWithImpl(_KotaModel _value, $Res Function(_KotaModel) _then)
      : super(_value, (v) => _then(v as _KotaModel));

  @override
  _KotaModel get _value => super._value as _KotaModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? idZona = freezed,
    Object? namaKota = freezed,
    Object? kodeKota = freezed,
  }) {
    return _then(_KotaModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      idZona: idZona == freezed
          ? _value.idZona
          : idZona // ignore: cast_nullable_to_non_nullable
              as int,
      namaKota: namaKota == freezed
          ? _value.namaKota
          : namaKota // ignore: cast_nullable_to_non_nullable
              as String,
      kodeKota: kodeKota == freezed
          ? _value.kodeKota
          : kodeKota // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KotaModel implements _KotaModel {
  const _$_KotaModel(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "id_zona") required this.idZona,
      @JsonKey(name: "nama_kota") required this.namaKota,
      @JsonKey(name: "kode_kota") required this.kodeKota});

  factory _$_KotaModel.fromJson(Map<String, dynamic> json) =>
      _$$_KotaModelFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "id_zona")
  final int idZona;
  @override
  @JsonKey(name: "nama_kota")
  final String namaKota;
  @override
  @JsonKey(name: "kode_kota")
  final String kodeKota;

  @override
  String toString() {
    return 'KotaModel(id: $id, idZona: $idZona, namaKota: $namaKota, kodeKota: $kodeKota)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _KotaModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.idZona, idZona) &&
            const DeepCollectionEquality().equals(other.namaKota, namaKota) &&
            const DeepCollectionEquality().equals(other.kodeKota, kodeKota));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(idZona),
      const DeepCollectionEquality().hash(namaKota),
      const DeepCollectionEquality().hash(kodeKota));

  @JsonKey(ignore: true)
  @override
  _$KotaModelCopyWith<_KotaModel> get copyWith =>
      __$KotaModelCopyWithImpl<_KotaModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KotaModelToJson(this);
  }
}

abstract class _KotaModel implements KotaModel {
  const factory _KotaModel(
      {@JsonKey(name: "id") required int id,
      @JsonKey(name: "id_zona") required int idZona,
      @JsonKey(name: "nama_kota") required String namaKota,
      @JsonKey(name: "kode_kota") required String kodeKota}) = _$_KotaModel;

  factory _KotaModel.fromJson(Map<String, dynamic> json) =
      _$_KotaModel.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "id_zona")
  int get idZona;
  @override
  @JsonKey(name: "nama_kota")
  String get namaKota;
  @override
  @JsonKey(name: "kode_kota")
  String get kodeKota;
  @override
  @JsonKey(ignore: true)
  _$KotaModelCopyWith<_KotaModel> get copyWith =>
      throw _privateConstructorUsedError;
}
