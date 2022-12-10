// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthenticationModel _$AuthenticationModelFromJson(Map<String, dynamic> json) {
  return _AuthenticationModel.fromJson(json);
}

/// @nodoc
class _$AuthenticationModelTearOff {
  const _$AuthenticationModelTearOff();

  _AuthenticationModel call(
      {@JsonKey(name: 'access-token') String? accessToken,
      @JsonKey(name: 'token-type') String? tokenType,
      @JsonKey(name: 'user') MeModel? meModel}) {
    return _AuthenticationModel(
      accessToken: accessToken,
      tokenType: tokenType,
      meModel: meModel,
    );
  }

  AuthenticationModel fromJson(Map<String, Object?> json) {
    return AuthenticationModel.fromJson(json);
  }
}

/// @nodoc
const $AuthenticationModel = _$AuthenticationModelTearOff();

/// @nodoc
mixin _$AuthenticationModel {
  @JsonKey(name: 'access-token')
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'token-type')
  String? get tokenType => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  MeModel? get meModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationModelCopyWith<AuthenticationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationModelCopyWith<$Res> {
  factory $AuthenticationModelCopyWith(
          AuthenticationModel value, $Res Function(AuthenticationModel) then) =
      _$AuthenticationModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'access-token') String? accessToken,
      @JsonKey(name: 'token-type') String? tokenType,
      @JsonKey(name: 'user') MeModel? meModel});

  $MeModelCopyWith<$Res>? get meModel;
}

/// @nodoc
class _$AuthenticationModelCopyWithImpl<$Res>
    implements $AuthenticationModelCopyWith<$Res> {
  _$AuthenticationModelCopyWithImpl(this._value, this._then);

  final AuthenticationModel _value;
  // ignore: unused_field
  final $Res Function(AuthenticationModel) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? tokenType = freezed,
    Object? meModel = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenType: tokenType == freezed
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      meModel: meModel == freezed
          ? _value.meModel
          : meModel // ignore: cast_nullable_to_non_nullable
              as MeModel?,
    ));
  }

  @override
  $MeModelCopyWith<$Res>? get meModel {
    if (_value.meModel == null) {
      return null;
    }

    return $MeModelCopyWith<$Res>(_value.meModel!, (value) {
      return _then(_value.copyWith(meModel: value));
    });
  }
}

/// @nodoc
abstract class _$AuthenticationModelCopyWith<$Res>
    implements $AuthenticationModelCopyWith<$Res> {
  factory _$AuthenticationModelCopyWith(_AuthenticationModel value,
          $Res Function(_AuthenticationModel) then) =
      __$AuthenticationModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'access-token') String? accessToken,
      @JsonKey(name: 'token-type') String? tokenType,
      @JsonKey(name: 'user') MeModel? meModel});

  @override
  $MeModelCopyWith<$Res>? get meModel;
}

/// @nodoc
class __$AuthenticationModelCopyWithImpl<$Res>
    extends _$AuthenticationModelCopyWithImpl<$Res>
    implements _$AuthenticationModelCopyWith<$Res> {
  __$AuthenticationModelCopyWithImpl(
      _AuthenticationModel _value, $Res Function(_AuthenticationModel) _then)
      : super(_value, (v) => _then(v as _AuthenticationModel));

  @override
  _AuthenticationModel get _value => super._value as _AuthenticationModel;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? tokenType = freezed,
    Object? meModel = freezed,
  }) {
    return _then(_AuthenticationModel(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenType: tokenType == freezed
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      meModel: meModel == freezed
          ? _value.meModel
          : meModel // ignore: cast_nullable_to_non_nullable
              as MeModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthenticationModel implements _AuthenticationModel {
  const _$_AuthenticationModel(
      {@JsonKey(name: 'access-token') this.accessToken,
      @JsonKey(name: 'token-type') this.tokenType,
      @JsonKey(name: 'user') this.meModel});

  factory _$_AuthenticationModel.fromJson(Map<String, dynamic> json) =>
      _$$_AuthenticationModelFromJson(json);

  @override
  @JsonKey(name: 'access-token')
  final String? accessToken;
  @override
  @JsonKey(name: 'token-type')
  final String? tokenType;
  @override
  @JsonKey(name: 'user')
  final MeModel? meModel;

  @override
  String toString() {
    return 'AuthenticationModel(accessToken: $accessToken, tokenType: $tokenType, meModel: $meModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthenticationModel &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken) &&
            const DeepCollectionEquality().equals(other.tokenType, tokenType) &&
            const DeepCollectionEquality().equals(other.meModel, meModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(accessToken),
      const DeepCollectionEquality().hash(tokenType),
      const DeepCollectionEquality().hash(meModel));

  @JsonKey(ignore: true)
  @override
  _$AuthenticationModelCopyWith<_AuthenticationModel> get copyWith =>
      __$AuthenticationModelCopyWithImpl<_AuthenticationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthenticationModelToJson(this);
  }
}

abstract class _AuthenticationModel implements AuthenticationModel {
  const factory _AuthenticationModel(
      {@JsonKey(name: 'access-token') String? accessToken,
      @JsonKey(name: 'token-type') String? tokenType,
      @JsonKey(name: 'user') MeModel? meModel}) = _$_AuthenticationModel;

  factory _AuthenticationModel.fromJson(Map<String, dynamic> json) =
      _$_AuthenticationModel.fromJson;

  @override
  @JsonKey(name: 'access-token')
  String? get accessToken;
  @override
  @JsonKey(name: 'token-type')
  String? get tokenType;
  @override
  @JsonKey(name: 'user')
  MeModel? get meModel;
  @override
  @JsonKey(ignore: true)
  _$AuthenticationModelCopyWith<_AuthenticationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
