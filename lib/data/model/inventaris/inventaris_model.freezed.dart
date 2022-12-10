// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inventaris_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InventarisModel _$InventarisModelFromJson(Map<String, dynamic> json) {
  return _InventarisModel.fromJson(json);
}

/// @nodoc
class _$InventarisModelTearOff {
  const _$InventarisModelTearOff();

  _InventarisModel call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'nama_inv') String? namaInventory,
      @JsonKey(name: 'jmlh_inv') String? jumlahInventory,
      @JsonKey(name: 'foto_inv') String? foto,
      @JsonKey(name: 'keterangan_inv') String? keterangan}) {
    return _InventarisModel(
      id: id,
      namaInventory: namaInventory,
      jumlahInventory: jumlahInventory,
      foto: foto,
      keterangan: keterangan,
    );
  }

  InventarisModel fromJson(Map<String, Object?> json) {
    return InventarisModel.fromJson(json);
  }
}

/// @nodoc
const $InventarisModel = _$InventarisModelTearOff();

/// @nodoc
mixin _$InventarisModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_inv')
  String? get namaInventory => throw _privateConstructorUsedError;
  @JsonKey(name: 'jmlh_inv')
  String? get jumlahInventory => throw _privateConstructorUsedError;
  @JsonKey(name: 'foto_inv')
  String? get foto => throw _privateConstructorUsedError;
  @JsonKey(name: 'keterangan_inv')
  String? get keterangan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InventarisModelCopyWith<InventarisModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventarisModelCopyWith<$Res> {
  factory $InventarisModelCopyWith(
          InventarisModel value, $Res Function(InventarisModel) then) =
      _$InventarisModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'nama_inv') String? namaInventory,
      @JsonKey(name: 'jmlh_inv') String? jumlahInventory,
      @JsonKey(name: 'foto_inv') String? foto,
      @JsonKey(name: 'keterangan_inv') String? keterangan});
}

/// @nodoc
class _$InventarisModelCopyWithImpl<$Res>
    implements $InventarisModelCopyWith<$Res> {
  _$InventarisModelCopyWithImpl(this._value, this._then);

  final InventarisModel _value;
  // ignore: unused_field
  final $Res Function(InventarisModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? namaInventory = freezed,
    Object? jumlahInventory = freezed,
    Object? foto = freezed,
    Object? keterangan = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      namaInventory: namaInventory == freezed
          ? _value.namaInventory
          : namaInventory // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlahInventory: jumlahInventory == freezed
          ? _value.jumlahInventory
          : jumlahInventory // ignore: cast_nullable_to_non_nullable
              as String?,
      foto: foto == freezed
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String?,
      keterangan: keterangan == freezed
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$InventarisModelCopyWith<$Res>
    implements $InventarisModelCopyWith<$Res> {
  factory _$InventarisModelCopyWith(
          _InventarisModel value, $Res Function(_InventarisModel) then) =
      __$InventarisModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'nama_inv') String? namaInventory,
      @JsonKey(name: 'jmlh_inv') String? jumlahInventory,
      @JsonKey(name: 'foto_inv') String? foto,
      @JsonKey(name: 'keterangan_inv') String? keterangan});
}

/// @nodoc
class __$InventarisModelCopyWithImpl<$Res>
    extends _$InventarisModelCopyWithImpl<$Res>
    implements _$InventarisModelCopyWith<$Res> {
  __$InventarisModelCopyWithImpl(
      _InventarisModel _value, $Res Function(_InventarisModel) _then)
      : super(_value, (v) => _then(v as _InventarisModel));

  @override
  _InventarisModel get _value => super._value as _InventarisModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? namaInventory = freezed,
    Object? jumlahInventory = freezed,
    Object? foto = freezed,
    Object? keterangan = freezed,
  }) {
    return _then(_InventarisModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      namaInventory: namaInventory == freezed
          ? _value.namaInventory
          : namaInventory // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlahInventory: jumlahInventory == freezed
          ? _value.jumlahInventory
          : jumlahInventory // ignore: cast_nullable_to_non_nullable
              as String?,
      foto: foto == freezed
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String?,
      keterangan: keterangan == freezed
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InventarisModel implements _InventarisModel {
  const _$_InventarisModel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'nama_inv') this.namaInventory,
      @JsonKey(name: 'jmlh_inv') this.jumlahInventory,
      @JsonKey(name: 'foto_inv') this.foto,
      @JsonKey(name: 'keterangan_inv') this.keterangan});

  factory _$_InventarisModel.fromJson(Map<String, dynamic> json) =>
      _$$_InventarisModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'nama_inv')
  final String? namaInventory;
  @override
  @JsonKey(name: 'jmlh_inv')
  final String? jumlahInventory;
  @override
  @JsonKey(name: 'foto_inv')
  final String? foto;
  @override
  @JsonKey(name: 'keterangan_inv')
  final String? keterangan;

  @override
  String toString() {
    return 'InventarisModel(id: $id, namaInventory: $namaInventory, jumlahInventory: $jumlahInventory, foto: $foto, keterangan: $keterangan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InventarisModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.namaInventory, namaInventory) &&
            const DeepCollectionEquality()
                .equals(other.jumlahInventory, jumlahInventory) &&
            const DeepCollectionEquality().equals(other.foto, foto) &&
            const DeepCollectionEquality()
                .equals(other.keterangan, keterangan));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(namaInventory),
      const DeepCollectionEquality().hash(jumlahInventory),
      const DeepCollectionEquality().hash(foto),
      const DeepCollectionEquality().hash(keterangan));

  @JsonKey(ignore: true)
  @override
  _$InventarisModelCopyWith<_InventarisModel> get copyWith =>
      __$InventarisModelCopyWithImpl<_InventarisModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InventarisModelToJson(this);
  }
}

abstract class _InventarisModel implements InventarisModel {
  const factory _InventarisModel(
          {@JsonKey(name: 'id') int? id,
          @JsonKey(name: 'nama_inv') String? namaInventory,
          @JsonKey(name: 'jmlh_inv') String? jumlahInventory,
          @JsonKey(name: 'foto_inv') String? foto,
          @JsonKey(name: 'keterangan_inv') String? keterangan}) =
      _$_InventarisModel;

  factory _InventarisModel.fromJson(Map<String, dynamic> json) =
      _$_InventarisModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'nama_inv')
  String? get namaInventory;
  @override
  @JsonKey(name: 'jmlh_inv')
  String? get jumlahInventory;
  @override
  @JsonKey(name: 'foto_inv')
  String? get foto;
  @override
  @JsonKey(name: 'keterangan_inv')
  String? get keterangan;
  @override
  @JsonKey(ignore: true)
  _$InventarisModelCopyWith<_InventarisModel> get copyWith =>
      throw _privateConstructorUsedError;
}
