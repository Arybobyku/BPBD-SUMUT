// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'logistik.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Logistik _$LogistikFromJson(Map<String, dynamic> json) {
  return _Logistik.fromJson(json);
}

/// @nodoc
class _$LogistikTearOff {
  const _$LogistikTearOff();

  _Logistik call(
      {@JsonKey(name: "id") required int id,
      @JsonKey(name: "nama_logistik") required String nama,
      @JsonKey(name: "jumlah_logistik") required int jumlah,
      @JsonKey(name: "foto_logistik") required String foto,
      @JsonKey(name: "kategori_logistik") required String kategori,
      @JsonKey(name: "tahun_logistik") required String tahun,
      @JsonKey(name: "keterangan_logistik") required String keterangan}) {
    return _Logistik(
      id: id,
      nama: nama,
      jumlah: jumlah,
      foto: foto,
      kategori: kategori,
      tahun: tahun,
      keterangan: keterangan,
    );
  }

  Logistik fromJson(Map<String, Object?> json) {
    return Logistik.fromJson(json);
  }
}

/// @nodoc
const $Logistik = _$LogistikTearOff();

/// @nodoc
mixin _$Logistik {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "nama_logistik")
  String get nama => throw _privateConstructorUsedError;
  @JsonKey(name: "jumlah_logistik")
  int get jumlah => throw _privateConstructorUsedError;
  @JsonKey(name: "foto_logistik")
  String get foto => throw _privateConstructorUsedError;
  @JsonKey(name: "kategori_logistik")
  String get kategori => throw _privateConstructorUsedError;
  @JsonKey(name: "tahun_logistik")
  String get tahun => throw _privateConstructorUsedError;
  @JsonKey(name: "keterangan_logistik")
  String get keterangan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogistikCopyWith<Logistik> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogistikCopyWith<$Res> {
  factory $LogistikCopyWith(Logistik value, $Res Function(Logistik) then) =
      _$LogistikCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "nama_logistik") String nama,
      @JsonKey(name: "jumlah_logistik") int jumlah,
      @JsonKey(name: "foto_logistik") String foto,
      @JsonKey(name: "kategori_logistik") String kategori,
      @JsonKey(name: "tahun_logistik") String tahun,
      @JsonKey(name: "keterangan_logistik") String keterangan});
}

/// @nodoc
class _$LogistikCopyWithImpl<$Res> implements $LogistikCopyWith<$Res> {
  _$LogistikCopyWithImpl(this._value, this._then);

  final Logistik _value;
  // ignore: unused_field
  final $Res Function(Logistik) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? nama = freezed,
    Object? jumlah = freezed,
    Object? foto = freezed,
    Object? kategori = freezed,
    Object? tahun = freezed,
    Object? keterangan = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nama: nama == freezed
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      jumlah: jumlah == freezed
          ? _value.jumlah
          : jumlah // ignore: cast_nullable_to_non_nullable
              as int,
      foto: foto == freezed
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String,
      kategori: kategori == freezed
          ? _value.kategori
          : kategori // ignore: cast_nullable_to_non_nullable
              as String,
      tahun: tahun == freezed
          ? _value.tahun
          : tahun // ignore: cast_nullable_to_non_nullable
              as String,
      keterangan: keterangan == freezed
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LogistikCopyWith<$Res> implements $LogistikCopyWith<$Res> {
  factory _$LogistikCopyWith(_Logistik value, $Res Function(_Logistik) then) =
      __$LogistikCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "nama_logistik") String nama,
      @JsonKey(name: "jumlah_logistik") int jumlah,
      @JsonKey(name: "foto_logistik") String foto,
      @JsonKey(name: "kategori_logistik") String kategori,
      @JsonKey(name: "tahun_logistik") String tahun,
      @JsonKey(name: "keterangan_logistik") String keterangan});
}

/// @nodoc
class __$LogistikCopyWithImpl<$Res> extends _$LogistikCopyWithImpl<$Res>
    implements _$LogistikCopyWith<$Res> {
  __$LogistikCopyWithImpl(_Logistik _value, $Res Function(_Logistik) _then)
      : super(_value, (v) => _then(v as _Logistik));

  @override
  _Logistik get _value => super._value as _Logistik;

  @override
  $Res call({
    Object? id = freezed,
    Object? nama = freezed,
    Object? jumlah = freezed,
    Object? foto = freezed,
    Object? kategori = freezed,
    Object? tahun = freezed,
    Object? keterangan = freezed,
  }) {
    return _then(_Logistik(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nama: nama == freezed
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      jumlah: jumlah == freezed
          ? _value.jumlah
          : jumlah // ignore: cast_nullable_to_non_nullable
              as int,
      foto: foto == freezed
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String,
      kategori: kategori == freezed
          ? _value.kategori
          : kategori // ignore: cast_nullable_to_non_nullable
              as String,
      tahun: tahun == freezed
          ? _value.tahun
          : tahun // ignore: cast_nullable_to_non_nullable
              as String,
      keterangan: keterangan == freezed
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Logistik implements _Logistik {
  const _$_Logistik(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "nama_logistik") required this.nama,
      @JsonKey(name: "jumlah_logistik") required this.jumlah,
      @JsonKey(name: "foto_logistik") required this.foto,
      @JsonKey(name: "kategori_logistik") required this.kategori,
      @JsonKey(name: "tahun_logistik") required this.tahun,
      @JsonKey(name: "keterangan_logistik") required this.keterangan});

  factory _$_Logistik.fromJson(Map<String, dynamic> json) =>
      _$$_LogistikFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "nama_logistik")
  final String nama;
  @override
  @JsonKey(name: "jumlah_logistik")
  final int jumlah;
  @override
  @JsonKey(name: "foto_logistik")
  final String foto;
  @override
  @JsonKey(name: "kategori_logistik")
  final String kategori;
  @override
  @JsonKey(name: "tahun_logistik")
  final String tahun;
  @override
  @JsonKey(name: "keterangan_logistik")
  final String keterangan;

  @override
  String toString() {
    return 'Logistik(id: $id, nama: $nama, jumlah: $jumlah, foto: $foto, kategori: $kategori, tahun: $tahun, keterangan: $keterangan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Logistik &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.nama, nama) &&
            const DeepCollectionEquality().equals(other.jumlah, jumlah) &&
            const DeepCollectionEquality().equals(other.foto, foto) &&
            const DeepCollectionEquality().equals(other.kategori, kategori) &&
            const DeepCollectionEquality().equals(other.tahun, tahun) &&
            const DeepCollectionEquality()
                .equals(other.keterangan, keterangan));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(nama),
      const DeepCollectionEquality().hash(jumlah),
      const DeepCollectionEquality().hash(foto),
      const DeepCollectionEquality().hash(kategori),
      const DeepCollectionEquality().hash(tahun),
      const DeepCollectionEquality().hash(keterangan));

  @JsonKey(ignore: true)
  @override
  _$LogistikCopyWith<_Logistik> get copyWith =>
      __$LogistikCopyWithImpl<_Logistik>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogistikToJson(this);
  }
}

abstract class _Logistik implements Logistik {
  const factory _Logistik(
          {@JsonKey(name: "id") required int id,
          @JsonKey(name: "nama_logistik") required String nama,
          @JsonKey(name: "jumlah_logistik") required int jumlah,
          @JsonKey(name: "foto_logistik") required String foto,
          @JsonKey(name: "kategori_logistik") required String kategori,
          @JsonKey(name: "tahun_logistik") required String tahun,
          @JsonKey(name: "keterangan_logistik") required String keterangan}) =
      _$_Logistik;

  factory _Logistik.fromJson(Map<String, dynamic> json) = _$_Logistik.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "nama_logistik")
  String get nama;
  @override
  @JsonKey(name: "jumlah_logistik")
  int get jumlah;
  @override
  @JsonKey(name: "foto_logistik")
  String get foto;
  @override
  @JsonKey(name: "kategori_logistik")
  String get kategori;
  @override
  @JsonKey(name: "tahun_logistik")
  String get tahun;
  @override
  @JsonKey(name: "keterangan_logistik")
  String get keterangan;
  @override
  @JsonKey(ignore: true)
  _$LogistikCopyWith<_Logistik> get copyWith =>
      throw _privateConstructorUsedError;
}
