// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'banner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) {
  return _BannerModel.fromJson(json);
}

/// @nodoc
class _$BannerModelTearOff {
  const _$BannerModelTearOff();

  _BannerModel call(
      {@JsonKey(name: "id") required int id,
      @JsonKey(name: "foto_banner") required String banner}) {
    return _BannerModel(
      id: id,
      banner: banner,
    );
  }

  BannerModel fromJson(Map<String, Object?> json) {
    return BannerModel.fromJson(json);
  }
}

/// @nodoc
const $BannerModel = _$BannerModelTearOff();

/// @nodoc
mixin _$BannerModel {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "foto_banner")
  String get banner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerModelCopyWith<BannerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerModelCopyWith<$Res> {
  factory $BannerModelCopyWith(
          BannerModel value, $Res Function(BannerModel) then) =
      _$BannerModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "foto_banner") String banner});
}

/// @nodoc
class _$BannerModelCopyWithImpl<$Res> implements $BannerModelCopyWith<$Res> {
  _$BannerModelCopyWithImpl(this._value, this._then);

  final BannerModel _value;
  // ignore: unused_field
  final $Res Function(BannerModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? banner = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      banner: banner == freezed
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BannerModelCopyWith<$Res>
    implements $BannerModelCopyWith<$Res> {
  factory _$BannerModelCopyWith(
          _BannerModel value, $Res Function(_BannerModel) then) =
      __$BannerModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "foto_banner") String banner});
}

/// @nodoc
class __$BannerModelCopyWithImpl<$Res> extends _$BannerModelCopyWithImpl<$Res>
    implements _$BannerModelCopyWith<$Res> {
  __$BannerModelCopyWithImpl(
      _BannerModel _value, $Res Function(_BannerModel) _then)
      : super(_value, (v) => _then(v as _BannerModel));

  @override
  _BannerModel get _value => super._value as _BannerModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? banner = freezed,
  }) {
    return _then(_BannerModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      banner: banner == freezed
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BannerModel implements _BannerModel {
  const _$_BannerModel(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "foto_banner") required this.banner});

  factory _$_BannerModel.fromJson(Map<String, dynamic> json) =>
      _$$_BannerModelFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "foto_banner")
  final String banner;

  @override
  String toString() {
    return 'BannerModel(id: $id, banner: $banner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BannerModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.banner, banner));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(banner));

  @JsonKey(ignore: true)
  @override
  _$BannerModelCopyWith<_BannerModel> get copyWith =>
      __$BannerModelCopyWithImpl<_BannerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BannerModelToJson(this);
  }
}

abstract class _BannerModel implements BannerModel {
  const factory _BannerModel(
      {@JsonKey(name: "id") required int id,
      @JsonKey(name: "foto_banner") required String banner}) = _$_BannerModel;

  factory _BannerModel.fromJson(Map<String, dynamic> json) =
      _$_BannerModel.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "foto_banner")
  String get banner;
  @override
  @JsonKey(ignore: true)
  _$BannerModelCopyWith<_BannerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
