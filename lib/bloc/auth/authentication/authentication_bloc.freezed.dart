// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthenticationEventTearOff {
  const _$AuthenticationEventTearOff();

  _Register register(BuildContext context, MeModel meModel) {
    return _Register(
      context,
      meModel,
    );
  }

  _Login login(BuildContext context, MeModel meModel) {
    return _Login(
      context,
      meModel,
    );
  }

  _Logout logout(BuildContext context) {
    return _Logout(
      context,
    );
  }

  _Initialize initialize(BuildContext context, MeModel meModel) {
    return _Initialize(
      context,
      meModel,
    );
  }
}

/// @nodoc
const $AuthenticationEvent = _$AuthenticationEventTearOff();

/// @nodoc
mixin _$AuthenticationEvent {
  BuildContext get context => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, MeModel meModel) register,
    required TResult Function(BuildContext context, MeModel meModel) login,
    required TResult Function(BuildContext context) logout,
    required TResult Function(BuildContext context, MeModel meModel) initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, MeModel meModel)? register,
    TResult Function(BuildContext context, MeModel meModel)? login,
    TResult Function(BuildContext context)? logout,
    TResult Function(BuildContext context, MeModel meModel)? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, MeModel meModel)? register,
    TResult Function(BuildContext context, MeModel meModel)? login,
    TResult Function(BuildContext context)? logout,
    TResult Function(BuildContext context, MeModel meModel)? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Initialize value) initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    TResult Function(_Initialize value)? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    TResult Function(_Initialize value)? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationEventCopyWith<AuthenticationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
  $Res call({BuildContext context});
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;

  @override
  $Res call({
    Object? context = freezed,
  }) {
    return _then(_value.copyWith(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc
abstract class _$RegisterCopyWith<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  factory _$RegisterCopyWith(_Register value, $Res Function(_Register) then) =
      __$RegisterCopyWithImpl<$Res>;
  @override
  $Res call({BuildContext context, MeModel meModel});

  $MeModelCopyWith<$Res> get meModel;
}

/// @nodoc
class __$RegisterCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$RegisterCopyWith<$Res> {
  __$RegisterCopyWithImpl(_Register _value, $Res Function(_Register) _then)
      : super(_value, (v) => _then(v as _Register));

  @override
  _Register get _value => super._value as _Register;

  @override
  $Res call({
    Object? context = freezed,
    Object? meModel = freezed,
  }) {
    return _then(_Register(
      context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      meModel == freezed
          ? _value.meModel
          : meModel // ignore: cast_nullable_to_non_nullable
              as MeModel,
    ));
  }

  @override
  $MeModelCopyWith<$Res> get meModel {
    return $MeModelCopyWith<$Res>(_value.meModel, (value) {
      return _then(_value.copyWith(meModel: value));
    });
  }
}

/// @nodoc

class _$_Register implements _Register {
  const _$_Register(this.context, this.meModel);

  @override
  final BuildContext context;
  @override
  final MeModel meModel;

  @override
  String toString() {
    return 'AuthenticationEvent.register(context: $context, meModel: $meModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Register &&
            const DeepCollectionEquality().equals(other.context, context) &&
            const DeepCollectionEquality().equals(other.meModel, meModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(context),
      const DeepCollectionEquality().hash(meModel));

  @JsonKey(ignore: true)
  @override
  _$RegisterCopyWith<_Register> get copyWith =>
      __$RegisterCopyWithImpl<_Register>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, MeModel meModel) register,
    required TResult Function(BuildContext context, MeModel meModel) login,
    required TResult Function(BuildContext context) logout,
    required TResult Function(BuildContext context, MeModel meModel) initialize,
  }) {
    return register(context, meModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, MeModel meModel)? register,
    TResult Function(BuildContext context, MeModel meModel)? login,
    TResult Function(BuildContext context)? logout,
    TResult Function(BuildContext context, MeModel meModel)? initialize,
  }) {
    return register?.call(context, meModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, MeModel meModel)? register,
    TResult Function(BuildContext context, MeModel meModel)? login,
    TResult Function(BuildContext context)? logout,
    TResult Function(BuildContext context, MeModel meModel)? initialize,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(context, meModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Initialize value) initialize,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    TResult Function(_Initialize value)? initialize,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    TResult Function(_Initialize value)? initialize,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements AuthenticationEvent {
  const factory _Register(BuildContext context, MeModel meModel) = _$_Register;

  @override
  BuildContext get context;
  MeModel get meModel;
  @override
  @JsonKey(ignore: true)
  _$RegisterCopyWith<_Register> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoginCopyWith<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  factory _$LoginCopyWith(_Login value, $Res Function(_Login) then) =
      __$LoginCopyWithImpl<$Res>;
  @override
  $Res call({BuildContext context, MeModel meModel});

  $MeModelCopyWith<$Res> get meModel;
}

/// @nodoc
class __$LoginCopyWithImpl<$Res> extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$LoginCopyWith<$Res> {
  __$LoginCopyWithImpl(_Login _value, $Res Function(_Login) _then)
      : super(_value, (v) => _then(v as _Login));

  @override
  _Login get _value => super._value as _Login;

  @override
  $Res call({
    Object? context = freezed,
    Object? meModel = freezed,
  }) {
    return _then(_Login(
      context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      meModel == freezed
          ? _value.meModel
          : meModel // ignore: cast_nullable_to_non_nullable
              as MeModel,
    ));
  }

  @override
  $MeModelCopyWith<$Res> get meModel {
    return $MeModelCopyWith<$Res>(_value.meModel, (value) {
      return _then(_value.copyWith(meModel: value));
    });
  }
}

/// @nodoc

class _$_Login implements _Login {
  const _$_Login(this.context, this.meModel);

  @override
  final BuildContext context;
  @override
  final MeModel meModel;

  @override
  String toString() {
    return 'AuthenticationEvent.login(context: $context, meModel: $meModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Login &&
            const DeepCollectionEquality().equals(other.context, context) &&
            const DeepCollectionEquality().equals(other.meModel, meModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(context),
      const DeepCollectionEquality().hash(meModel));

  @JsonKey(ignore: true)
  @override
  _$LoginCopyWith<_Login> get copyWith =>
      __$LoginCopyWithImpl<_Login>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, MeModel meModel) register,
    required TResult Function(BuildContext context, MeModel meModel) login,
    required TResult Function(BuildContext context) logout,
    required TResult Function(BuildContext context, MeModel meModel) initialize,
  }) {
    return login(context, meModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, MeModel meModel)? register,
    TResult Function(BuildContext context, MeModel meModel)? login,
    TResult Function(BuildContext context)? logout,
    TResult Function(BuildContext context, MeModel meModel)? initialize,
  }) {
    return login?.call(context, meModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, MeModel meModel)? register,
    TResult Function(BuildContext context, MeModel meModel)? login,
    TResult Function(BuildContext context)? logout,
    TResult Function(BuildContext context, MeModel meModel)? initialize,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(context, meModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Initialize value) initialize,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    TResult Function(_Initialize value)? initialize,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    TResult Function(_Initialize value)? initialize,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthenticationEvent {
  const factory _Login(BuildContext context, MeModel meModel) = _$_Login;

  @override
  BuildContext get context;
  MeModel get meModel;
  @override
  @JsonKey(ignore: true)
  _$LoginCopyWith<_Login> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LogoutCopyWith<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  factory _$LogoutCopyWith(_Logout value, $Res Function(_Logout) then) =
      __$LogoutCopyWithImpl<$Res>;
  @override
  $Res call({BuildContext context});
}

/// @nodoc
class __$LogoutCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$LogoutCopyWith<$Res> {
  __$LogoutCopyWithImpl(_Logout _value, $Res Function(_Logout) _then)
      : super(_value, (v) => _then(v as _Logout));

  @override
  _Logout get _value => super._value as _Logout;

  @override
  $Res call({
    Object? context = freezed,
  }) {
    return _then(_Logout(
      context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_Logout implements _Logout {
  const _$_Logout(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AuthenticationEvent.logout(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Logout &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$LogoutCopyWith<_Logout> get copyWith =>
      __$LogoutCopyWithImpl<_Logout>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, MeModel meModel) register,
    required TResult Function(BuildContext context, MeModel meModel) login,
    required TResult Function(BuildContext context) logout,
    required TResult Function(BuildContext context, MeModel meModel) initialize,
  }) {
    return logout(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, MeModel meModel)? register,
    TResult Function(BuildContext context, MeModel meModel)? login,
    TResult Function(BuildContext context)? logout,
    TResult Function(BuildContext context, MeModel meModel)? initialize,
  }) {
    return logout?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, MeModel meModel)? register,
    TResult Function(BuildContext context, MeModel meModel)? login,
    TResult Function(BuildContext context)? logout,
    TResult Function(BuildContext context, MeModel meModel)? initialize,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Initialize value) initialize,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    TResult Function(_Initialize value)? initialize,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    TResult Function(_Initialize value)? initialize,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthenticationEvent {
  const factory _Logout(BuildContext context) = _$_Logout;

  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$LogoutCopyWith<_Logout> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InitializeCopyWith<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  factory _$InitializeCopyWith(
          _Initialize value, $Res Function(_Initialize) then) =
      __$InitializeCopyWithImpl<$Res>;
  @override
  $Res call({BuildContext context, MeModel meModel});

  $MeModelCopyWith<$Res> get meModel;
}

/// @nodoc
class __$InitializeCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$InitializeCopyWith<$Res> {
  __$InitializeCopyWithImpl(
      _Initialize _value, $Res Function(_Initialize) _then)
      : super(_value, (v) => _then(v as _Initialize));

  @override
  _Initialize get _value => super._value as _Initialize;

  @override
  $Res call({
    Object? context = freezed,
    Object? meModel = freezed,
  }) {
    return _then(_Initialize(
      context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      meModel == freezed
          ? _value.meModel
          : meModel // ignore: cast_nullable_to_non_nullable
              as MeModel,
    ));
  }

  @override
  $MeModelCopyWith<$Res> get meModel {
    return $MeModelCopyWith<$Res>(_value.meModel, (value) {
      return _then(_value.copyWith(meModel: value));
    });
  }
}

/// @nodoc

class _$_Initialize implements _Initialize {
  const _$_Initialize(this.context, this.meModel);

  @override
  final BuildContext context;
  @override
  final MeModel meModel;

  @override
  String toString() {
    return 'AuthenticationEvent.initialize(context: $context, meModel: $meModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialize &&
            const DeepCollectionEquality().equals(other.context, context) &&
            const DeepCollectionEquality().equals(other.meModel, meModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(context),
      const DeepCollectionEquality().hash(meModel));

  @JsonKey(ignore: true)
  @override
  _$InitializeCopyWith<_Initialize> get copyWith =>
      __$InitializeCopyWithImpl<_Initialize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, MeModel meModel) register,
    required TResult Function(BuildContext context, MeModel meModel) login,
    required TResult Function(BuildContext context) logout,
    required TResult Function(BuildContext context, MeModel meModel) initialize,
  }) {
    return initialize(context, meModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, MeModel meModel)? register,
    TResult Function(BuildContext context, MeModel meModel)? login,
    TResult Function(BuildContext context)? logout,
    TResult Function(BuildContext context, MeModel meModel)? initialize,
  }) {
    return initialize?.call(context, meModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, MeModel meModel)? register,
    TResult Function(BuildContext context, MeModel meModel)? login,
    TResult Function(BuildContext context)? logout,
    TResult Function(BuildContext context, MeModel meModel)? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(context, meModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Initialize value) initialize,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    TResult Function(_Initialize value)? initialize,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    TResult Function(_Initialize value)? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements AuthenticationEvent {
  const factory _Initialize(BuildContext context, MeModel meModel) =
      _$_Initialize;

  @override
  BuildContext get context;
  MeModel get meModel;
  @override
  @JsonKey(ignore: true)
  _$InitializeCopyWith<_Initialize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

  _AuthenticationState call(
      {required MeModel? meModel,
      required bool isLoading,
      required bool isAuthenticated,
      required Option<Either<ResponseError, AuthenticationModel>>
          optionFailureOrSuccess}) {
    return _AuthenticationState(
      meModel: meModel,
      isLoading: isLoading,
      isAuthenticated: isAuthenticated,
      optionFailureOrSuccess: optionFailureOrSuccess,
    );
  }
}

/// @nodoc
const $AuthenticationState = _$AuthenticationStateTearOff();

/// @nodoc
mixin _$AuthenticationState {
  MeModel? get meModel => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isAuthenticated => throw _privateConstructorUsedError;
  Option<Either<ResponseError, AuthenticationModel>>
      get optionFailureOrSuccess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
  $Res call(
      {MeModel? meModel,
      bool isLoading,
      bool isAuthenticated,
      Option<Either<ResponseError, AuthenticationModel>>
          optionFailureOrSuccess});

  $MeModelCopyWith<$Res>? get meModel;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;

  @override
  $Res call({
    Object? meModel = freezed,
    Object? isLoading = freezed,
    Object? isAuthenticated = freezed,
    Object? optionFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      meModel: meModel == freezed
          ? _value.meModel
          : meModel // ignore: cast_nullable_to_non_nullable
              as MeModel?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      optionFailureOrSuccess: optionFailureOrSuccess == freezed
          ? _value.optionFailureOrSuccess
          : optionFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ResponseError, AuthenticationModel>>,
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
abstract class _$AuthenticationStateCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$AuthenticationStateCopyWith(_AuthenticationState value,
          $Res Function(_AuthenticationState) then) =
      __$AuthenticationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {MeModel? meModel,
      bool isLoading,
      bool isAuthenticated,
      Option<Either<ResponseError, AuthenticationModel>>
          optionFailureOrSuccess});

  @override
  $MeModelCopyWith<$Res>? get meModel;
}

/// @nodoc
class __$AuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$AuthenticationStateCopyWith<$Res> {
  __$AuthenticationStateCopyWithImpl(
      _AuthenticationState _value, $Res Function(_AuthenticationState) _then)
      : super(_value, (v) => _then(v as _AuthenticationState));

  @override
  _AuthenticationState get _value => super._value as _AuthenticationState;

  @override
  $Res call({
    Object? meModel = freezed,
    Object? isLoading = freezed,
    Object? isAuthenticated = freezed,
    Object? optionFailureOrSuccess = freezed,
  }) {
    return _then(_AuthenticationState(
      meModel: meModel == freezed
          ? _value.meModel
          : meModel // ignore: cast_nullable_to_non_nullable
              as MeModel?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      optionFailureOrSuccess: optionFailureOrSuccess == freezed
          ? _value.optionFailureOrSuccess
          : optionFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ResponseError, AuthenticationModel>>,
    ));
  }
}

/// @nodoc

class _$_AuthenticationState implements _AuthenticationState {
  const _$_AuthenticationState(
      {required this.meModel,
      required this.isLoading,
      required this.isAuthenticated,
      required this.optionFailureOrSuccess});

  @override
  final MeModel? meModel;
  @override
  final bool isLoading;
  @override
  final bool isAuthenticated;
  @override
  final Option<Either<ResponseError, AuthenticationModel>>
      optionFailureOrSuccess;

  @override
  String toString() {
    return 'AuthenticationState(meModel: $meModel, isLoading: $isLoading, isAuthenticated: $isAuthenticated, optionFailureOrSuccess: $optionFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthenticationState &&
            const DeepCollectionEquality().equals(other.meModel, meModel) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isAuthenticated, isAuthenticated) &&
            const DeepCollectionEquality()
                .equals(other.optionFailureOrSuccess, optionFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(meModel),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isAuthenticated),
      const DeepCollectionEquality().hash(optionFailureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$AuthenticationStateCopyWith<_AuthenticationState> get copyWith =>
      __$AuthenticationStateCopyWithImpl<_AuthenticationState>(
          this, _$identity);
}

abstract class _AuthenticationState implements AuthenticationState {
  const factory _AuthenticationState(
      {required MeModel? meModel,
      required bool isLoading,
      required bool isAuthenticated,
      required Option<Either<ResponseError, AuthenticationModel>>
          optionFailureOrSuccess}) = _$_AuthenticationState;

  @override
  MeModel? get meModel;
  @override
  bool get isLoading;
  @override
  bool get isAuthenticated;
  @override
  Option<Either<ResponseError, AuthenticationModel>> get optionFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$AuthenticationStateCopyWith<_AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}
