// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'me_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MeModel _$MeModelFromJson(Map<String, dynamic> json) {
  return _MeModel.fromJson(json);
}

/// @nodoc
class _$MeModelTearOff {
  const _$MeModelTearOff();

  _MeModel call(
      {int? id,
      @JsonKey(name: "name") String? name,
      int? role,
      String? nip,
      @JsonKey(name: "no_hp") String? noHp,
      @JsonKey(name: "id_kota") int? idKota,
      @JsonKey(name: "kota") KotaModel? kotaModel,
      String? email,
      String? password}) {
    return _MeModel(
      id: id,
      name: name,
      role: role,
      nip: nip,
      noHp: noHp,
      idKota: idKota,
      kotaModel: kotaModel,
      email: email,
      password: password,
    );
  }

  MeModel fromJson(Map<String, Object?> json) {
    return MeModel.fromJson(json);
  }
}

/// @nodoc
const $MeModel = _$MeModelTearOff();

/// @nodoc
mixin _$MeModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  int? get role => throw _privateConstructorUsedError;
  String? get nip => throw _privateConstructorUsedError;
  @JsonKey(name: "no_hp")
  String? get noHp => throw _privateConstructorUsedError;
  @JsonKey(name: "id_kota")
  int? get idKota => throw _privateConstructorUsedError;
  @JsonKey(name: "kota")
  KotaModel? get kotaModel => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeModelCopyWith<MeModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeModelCopyWith<$Res> {
  factory $MeModelCopyWith(MeModel value, $Res Function(MeModel) then) =
      _$MeModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: "name") String? name,
      int? role,
      String? nip,
      @JsonKey(name: "no_hp") String? noHp,
      @JsonKey(name: "id_kota") int? idKota,
      @JsonKey(name: "kota") KotaModel? kotaModel,
      String? email,
      String? password});

  $KotaModelCopyWith<$Res>? get kotaModel;
}

/// @nodoc
class _$MeModelCopyWithImpl<$Res> implements $MeModelCopyWith<$Res> {
  _$MeModelCopyWithImpl(this._value, this._then);

  final MeModel _value;
  // ignore: unused_field
  final $Res Function(MeModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? role = freezed,
    Object? nip = freezed,
    Object? noHp = freezed,
    Object? idKota = freezed,
    Object? kotaModel = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as int?,
      nip: nip == freezed
          ? _value.nip
          : nip // ignore: cast_nullable_to_non_nullable
              as String?,
      noHp: noHp == freezed
          ? _value.noHp
          : noHp // ignore: cast_nullable_to_non_nullable
              as String?,
      idKota: idKota == freezed
          ? _value.idKota
          : idKota // ignore: cast_nullable_to_non_nullable
              as int?,
      kotaModel: kotaModel == freezed
          ? _value.kotaModel
          : kotaModel // ignore: cast_nullable_to_non_nullable
              as KotaModel?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $KotaModelCopyWith<$Res>? get kotaModel {
    if (_value.kotaModel == null) {
      return null;
    }

    return $KotaModelCopyWith<$Res>(_value.kotaModel!, (value) {
      return _then(_value.copyWith(kotaModel: value));
    });
  }
}

/// @nodoc
abstract class _$MeModelCopyWith<$Res> implements $MeModelCopyWith<$Res> {
  factory _$MeModelCopyWith(_MeModel value, $Res Function(_MeModel) then) =
      __$MeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: "name") String? name,
      int? role,
      String? nip,
      @JsonKey(name: "no_hp") String? noHp,
      @JsonKey(name: "id_kota") int? idKota,
      @JsonKey(name: "kota") KotaModel? kotaModel,
      String? email,
      String? password});

  @override
  $KotaModelCopyWith<$Res>? get kotaModel;
}

/// @nodoc
class __$MeModelCopyWithImpl<$Res> extends _$MeModelCopyWithImpl<$Res>
    implements _$MeModelCopyWith<$Res> {
  __$MeModelCopyWithImpl(_MeModel _value, $Res Function(_MeModel) _then)
      : super(_value, (v) => _then(v as _MeModel));

  @override
  _MeModel get _value => super._value as _MeModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? role = freezed,
    Object? nip = freezed,
    Object? noHp = freezed,
    Object? idKota = freezed,
    Object? kotaModel = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_MeModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as int?,
      nip: nip == freezed
          ? _value.nip
          : nip // ignore: cast_nullable_to_non_nullable
              as String?,
      noHp: noHp == freezed
          ? _value.noHp
          : noHp // ignore: cast_nullable_to_non_nullable
              as String?,
      idKota: idKota == freezed
          ? _value.idKota
          : idKota // ignore: cast_nullable_to_non_nullable
              as int?,
      kotaModel: kotaModel == freezed
          ? _value.kotaModel
          : kotaModel // ignore: cast_nullable_to_non_nullable
              as KotaModel?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MeModel implements _MeModel {
  const _$_MeModel(
      {this.id,
      @JsonKey(name: "name") this.name,
      this.role,
      this.nip,
      @JsonKey(name: "no_hp") this.noHp,
      @JsonKey(name: "id_kota") this.idKota,
      @JsonKey(name: "kota") this.kotaModel,
      this.email,
      this.password});

  factory _$_MeModel.fromJson(Map<String, dynamic> json) =>
      _$$_MeModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  final int? role;
  @override
  final String? nip;
  @override
  @JsonKey(name: "no_hp")
  final String? noHp;
  @override
  @JsonKey(name: "id_kota")
  final int? idKota;
  @override
  @JsonKey(name: "kota")
  final KotaModel? kotaModel;
  @override
  final String? email;
  @override
  final String? password;

  @override
  String toString() {
    return 'MeModel(id: $id, name: $name, role: $role, nip: $nip, noHp: $noHp, idKota: $idKota, kotaModel: $kotaModel, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MeModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.role, role) &&
            const DeepCollectionEquality().equals(other.nip, nip) &&
            const DeepCollectionEquality().equals(other.noHp, noHp) &&
            const DeepCollectionEquality().equals(other.idKota, idKota) &&
            const DeepCollectionEquality().equals(other.kotaModel, kotaModel) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(role),
      const DeepCollectionEquality().hash(nip),
      const DeepCollectionEquality().hash(noHp),
      const DeepCollectionEquality().hash(idKota),
      const DeepCollectionEquality().hash(kotaModel),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$MeModelCopyWith<_MeModel> get copyWith =>
      __$MeModelCopyWithImpl<_MeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeModelToJson(this);
  }
}

abstract class _MeModel implements MeModel {
  const factory _MeModel(
      {int? id,
      @JsonKey(name: "name") String? name,
      int? role,
      String? nip,
      @JsonKey(name: "no_hp") String? noHp,
      @JsonKey(name: "id_kota") int? idKota,
      @JsonKey(name: "kota") KotaModel? kotaModel,
      String? email,
      String? password}) = _$_MeModel;

  factory _MeModel.fromJson(Map<String, dynamic> json) = _$_MeModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  int? get role;
  @override
  String? get nip;
  @override
  @JsonKey(name: "no_hp")
  String? get noHp;
  @override
  @JsonKey(name: "id_kota")
  int? get idKota;
  @override
  @JsonKey(name: "kota")
  KotaModel? get kotaModel;
  @override
  String? get email;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$MeModelCopyWith<_MeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
