// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'permintaan_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PermintaanItem _$PermintaanItemFromJson(Map<String, dynamic> json) {
  return _PermintaanItem.fromJson(json);
}

/// @nodoc
class _$PermintaanItemTearOff {
  const _$PermintaanItemTearOff();

  _PermintaanItem call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "nama_permintaan_barang") String? nama,
      @JsonKey(name: "jumlah_permintaan_barang") int? jumlah}) {
    return _PermintaanItem(
      id: id,
      nama: nama,
      jumlah: jumlah,
    );
  }

  PermintaanItem fromJson(Map<String, Object?> json) {
    return PermintaanItem.fromJson(json);
  }
}

/// @nodoc
const $PermintaanItem = _$PermintaanItemTearOff();

/// @nodoc
mixin _$PermintaanItem {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "nama_permintaan_barang")
  String? get nama => throw _privateConstructorUsedError;
  @JsonKey(name: "jumlah_permintaan_barang")
  int? get jumlah => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PermintaanItemCopyWith<PermintaanItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermintaanItemCopyWith<$Res> {
  factory $PermintaanItemCopyWith(
          PermintaanItem value, $Res Function(PermintaanItem) then) =
      _$PermintaanItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "nama_permintaan_barang") String? nama,
      @JsonKey(name: "jumlah_permintaan_barang") int? jumlah});
}

/// @nodoc
class _$PermintaanItemCopyWithImpl<$Res>
    implements $PermintaanItemCopyWith<$Res> {
  _$PermintaanItemCopyWithImpl(this._value, this._then);

  final PermintaanItem _value;
  // ignore: unused_field
  final $Res Function(PermintaanItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? nama = freezed,
    Object? jumlah = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nama: nama == freezed
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlah: jumlah == freezed
          ? _value.jumlah
          : jumlah // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$PermintaanItemCopyWith<$Res>
    implements $PermintaanItemCopyWith<$Res> {
  factory _$PermintaanItemCopyWith(
          _PermintaanItem value, $Res Function(_PermintaanItem) then) =
      __$PermintaanItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "nama_permintaan_barang") String? nama,
      @JsonKey(name: "jumlah_permintaan_barang") int? jumlah});
}

/// @nodoc
class __$PermintaanItemCopyWithImpl<$Res>
    extends _$PermintaanItemCopyWithImpl<$Res>
    implements _$PermintaanItemCopyWith<$Res> {
  __$PermintaanItemCopyWithImpl(
      _PermintaanItem _value, $Res Function(_PermintaanItem) _then)
      : super(_value, (v) => _then(v as _PermintaanItem));

  @override
  _PermintaanItem get _value => super._value as _PermintaanItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? nama = freezed,
    Object? jumlah = freezed,
  }) {
    return _then(_PermintaanItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nama: nama == freezed
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlah: jumlah == freezed
          ? _value.jumlah
          : jumlah // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PermintaanItem implements _PermintaanItem {
  const _$_PermintaanItem(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "nama_permintaan_barang") this.nama,
      @JsonKey(name: "jumlah_permintaan_barang") this.jumlah});

  factory _$_PermintaanItem.fromJson(Map<String, dynamic> json) =>
      _$$_PermintaanItemFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "nama_permintaan_barang")
  final String? nama;
  @override
  @JsonKey(name: "jumlah_permintaan_barang")
  final int? jumlah;

  @override
  String toString() {
    return 'PermintaanItem(id: $id, nama: $nama, jumlah: $jumlah)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PermintaanItem &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.nama, nama) &&
            const DeepCollectionEquality().equals(other.jumlah, jumlah));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(nama),
      const DeepCollectionEquality().hash(jumlah));

  @JsonKey(ignore: true)
  @override
  _$PermintaanItemCopyWith<_PermintaanItem> get copyWith =>
      __$PermintaanItemCopyWithImpl<_PermintaanItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PermintaanItemToJson(this);
  }
}

abstract class _PermintaanItem implements PermintaanItem {
  const factory _PermintaanItem(
          {@JsonKey(name: "id") int? id,
          @JsonKey(name: "nama_permintaan_barang") String? nama,
          @JsonKey(name: "jumlah_permintaan_barang") int? jumlah}) =
      _$_PermintaanItem;

  factory _PermintaanItem.fromJson(Map<String, dynamic> json) =
      _$_PermintaanItem.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "nama_permintaan_barang")
  String? get nama;
  @override
  @JsonKey(name: "jumlah_permintaan_barang")
  int? get jumlah;
  @override
  @JsonKey(ignore: true)
  _$PermintaanItemCopyWith<_PermintaanItem> get copyWith =>
      throw _privateConstructorUsedError;
}
