// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inventaris_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InventarisEventTearOff {
  const _$InventarisEventTearOff();

  _watchAll watchAll(BuildContext context, int idKota) {
    return _watchAll(
      context,
      idKota,
    );
  }
}

/// @nodoc
const $InventarisEvent = _$InventarisEventTearOff();

/// @nodoc
mixin _$InventarisEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  int get idKota => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, int idKota) watchAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, int idKota)? watchAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, int idKota)? watchAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_watchAll value) watchAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_watchAll value)? watchAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_watchAll value)? watchAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InventarisEventCopyWith<InventarisEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventarisEventCopyWith<$Res> {
  factory $InventarisEventCopyWith(
          InventarisEvent value, $Res Function(InventarisEvent) then) =
      _$InventarisEventCopyWithImpl<$Res>;
  $Res call({BuildContext context, int idKota});
}

/// @nodoc
class _$InventarisEventCopyWithImpl<$Res>
    implements $InventarisEventCopyWith<$Res> {
  _$InventarisEventCopyWithImpl(this._value, this._then);

  final InventarisEvent _value;
  // ignore: unused_field
  final $Res Function(InventarisEvent) _then;

  @override
  $Res call({
    Object? context = freezed,
    Object? idKota = freezed,
  }) {
    return _then(_value.copyWith(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      idKota: idKota == freezed
          ? _value.idKota
          : idKota // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$watchAllCopyWith<$Res>
    implements $InventarisEventCopyWith<$Res> {
  factory _$watchAllCopyWith(_watchAll value, $Res Function(_watchAll) then) =
      __$watchAllCopyWithImpl<$Res>;
  @override
  $Res call({BuildContext context, int idKota});
}

/// @nodoc
class __$watchAllCopyWithImpl<$Res> extends _$InventarisEventCopyWithImpl<$Res>
    implements _$watchAllCopyWith<$Res> {
  __$watchAllCopyWithImpl(_watchAll _value, $Res Function(_watchAll) _then)
      : super(_value, (v) => _then(v as _watchAll));

  @override
  _watchAll get _value => super._value as _watchAll;

  @override
  $Res call({
    Object? context = freezed,
    Object? idKota = freezed,
  }) {
    return _then(_watchAll(
      context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      idKota == freezed
          ? _value.idKota
          : idKota // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_watchAll implements _watchAll {
  const _$_watchAll(this.context, this.idKota);

  @override
  final BuildContext context;
  @override
  final int idKota;

  @override
  String toString() {
    return 'InventarisEvent.watchAll(context: $context, idKota: $idKota)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _watchAll &&
            const DeepCollectionEquality().equals(other.context, context) &&
            const DeepCollectionEquality().equals(other.idKota, idKota));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(context),
      const DeepCollectionEquality().hash(idKota));

  @JsonKey(ignore: true)
  @override
  _$watchAllCopyWith<_watchAll> get copyWith =>
      __$watchAllCopyWithImpl<_watchAll>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, int idKota) watchAll,
  }) {
    return watchAll(context, idKota);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, int idKota)? watchAll,
  }) {
    return watchAll?.call(context, idKota);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, int idKota)? watchAll,
    required TResult orElse(),
  }) {
    if (watchAll != null) {
      return watchAll(context, idKota);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_watchAll value) watchAll,
  }) {
    return watchAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_watchAll value)? watchAll,
  }) {
    return watchAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_watchAll value)? watchAll,
    required TResult orElse(),
  }) {
    if (watchAll != null) {
      return watchAll(this);
    }
    return orElse();
  }
}

abstract class _watchAll implements InventarisEvent {
  const factory _watchAll(BuildContext context, int idKota) = _$_watchAll;

  @override
  BuildContext get context;
  @override
  int get idKota;
  @override
  @JsonKey(ignore: true)
  _$watchAllCopyWith<_watchAll> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$InventarisStateTearOff {
  const _$InventarisStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Error error(String error) {
    return _Error(
      error,
    );
  }

  _InventarisState loaded(
      {required IList<InventarisModel> invetarisList,
      required Option<Either<ResponseError, IList<InventarisModel>>>
          optionFailureOrDiseases}) {
    return _InventarisState(
      invetarisList: invetarisList,
      optionFailureOrDiseases: optionFailureOrDiseases,
    );
  }
}

/// @nodoc
const $InventarisState = _$InventarisStateTearOff();

/// @nodoc
mixin _$InventarisState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(
            IList<InventarisModel> invetarisList,
            Option<Either<ResponseError, IList<InventarisModel>>>
                optionFailureOrDiseases)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(
            IList<InventarisModel> invetarisList,
            Option<Either<ResponseError, IList<InventarisModel>>>
                optionFailureOrDiseases)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(
            IList<InventarisModel> invetarisList,
            Option<Either<ResponseError, IList<InventarisModel>>>
                optionFailureOrDiseases)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_InventarisState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_InventarisState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_InventarisState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventarisStateCopyWith<$Res> {
  factory $InventarisStateCopyWith(
          InventarisState value, $Res Function(InventarisState) then) =
      _$InventarisStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InventarisStateCopyWithImpl<$Res>
    implements $InventarisStateCopyWith<$Res> {
  _$InventarisStateCopyWithImpl(this._value, this._then);

  final InventarisState _value;
  // ignore: unused_field
  final $Res Function(InventarisState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$InventarisStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'InventarisState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(
            IList<InventarisModel> invetarisList,
            Option<Either<ResponseError, IList<InventarisModel>>>
                optionFailureOrDiseases)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(
            IList<InventarisModel> invetarisList,
            Option<Either<ResponseError, IList<InventarisModel>>>
                optionFailureOrDiseases)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(
            IList<InventarisModel> invetarisList,
            Option<Either<ResponseError, IList<InventarisModel>>>
                optionFailureOrDiseases)?
        loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_InventarisState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_InventarisState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_InventarisState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements InventarisState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$InventarisStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'InventarisState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(
            IList<InventarisModel> invetarisList,
            Option<Either<ResponseError, IList<InventarisModel>>>
                optionFailureOrDiseases)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(
            IList<InventarisModel> invetarisList,
            Option<Either<ResponseError, IList<InventarisModel>>>
                optionFailureOrDiseases)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(
            IList<InventarisModel> invetarisList,
            Option<Either<ResponseError, IList<InventarisModel>>>
                optionFailureOrDiseases)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_InventarisState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_InventarisState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_InventarisState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements InventarisState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$InventarisStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_Error(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'InventarisState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(
            IList<InventarisModel> invetarisList,
            Option<Either<ResponseError, IList<InventarisModel>>>
                optionFailureOrDiseases)
        loaded,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(
            IList<InventarisModel> invetarisList,
            Option<Either<ResponseError, IList<InventarisModel>>>
                optionFailureOrDiseases)?
        loaded,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(
            IList<InventarisModel> invetarisList,
            Option<Either<ResponseError, IList<InventarisModel>>>
                optionFailureOrDiseases)?
        loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_InventarisState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_InventarisState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_InventarisState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements InventarisState {
  const factory _Error(String error) = _$_Error;

  String get error;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InventarisStateCopyWith<$Res> {
  factory _$InventarisStateCopyWith(
          _InventarisState value, $Res Function(_InventarisState) then) =
      __$InventarisStateCopyWithImpl<$Res>;
  $Res call(
      {IList<InventarisModel> invetarisList,
      Option<Either<ResponseError, IList<InventarisModel>>>
          optionFailureOrDiseases});
}

/// @nodoc
class __$InventarisStateCopyWithImpl<$Res>
    extends _$InventarisStateCopyWithImpl<$Res>
    implements _$InventarisStateCopyWith<$Res> {
  __$InventarisStateCopyWithImpl(
      _InventarisState _value, $Res Function(_InventarisState) _then)
      : super(_value, (v) => _then(v as _InventarisState));

  @override
  _InventarisState get _value => super._value as _InventarisState;

  @override
  $Res call({
    Object? invetarisList = freezed,
    Object? optionFailureOrDiseases = freezed,
  }) {
    return _then(_InventarisState(
      invetarisList: invetarisList == freezed
          ? _value.invetarisList
          : invetarisList // ignore: cast_nullable_to_non_nullable
              as IList<InventarisModel>,
      optionFailureOrDiseases: optionFailureOrDiseases == freezed
          ? _value.optionFailureOrDiseases
          : optionFailureOrDiseases // ignore: cast_nullable_to_non_nullable
              as Option<Either<ResponseError, IList<InventarisModel>>>,
    ));
  }
}

/// @nodoc

class _$_InventarisState implements _InventarisState {
  const _$_InventarisState(
      {required this.invetarisList, required this.optionFailureOrDiseases});

  @override
  final IList<InventarisModel> invetarisList;
  @override
  final Option<Either<ResponseError, IList<InventarisModel>>>
      optionFailureOrDiseases;

  @override
  String toString() {
    return 'InventarisState.loaded(invetarisList: $invetarisList, optionFailureOrDiseases: $optionFailureOrDiseases)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InventarisState &&
            const DeepCollectionEquality()
                .equals(other.invetarisList, invetarisList) &&
            const DeepCollectionEquality().equals(
                other.optionFailureOrDiseases, optionFailureOrDiseases));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(invetarisList),
      const DeepCollectionEquality().hash(optionFailureOrDiseases));

  @JsonKey(ignore: true)
  @override
  _$InventarisStateCopyWith<_InventarisState> get copyWith =>
      __$InventarisStateCopyWithImpl<_InventarisState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(
            IList<InventarisModel> invetarisList,
            Option<Either<ResponseError, IList<InventarisModel>>>
                optionFailureOrDiseases)
        loaded,
  }) {
    return loaded(invetarisList, optionFailureOrDiseases);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(
            IList<InventarisModel> invetarisList,
            Option<Either<ResponseError, IList<InventarisModel>>>
                optionFailureOrDiseases)?
        loaded,
  }) {
    return loaded?.call(invetarisList, optionFailureOrDiseases);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(
            IList<InventarisModel> invetarisList,
            Option<Either<ResponseError, IList<InventarisModel>>>
                optionFailureOrDiseases)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(invetarisList, optionFailureOrDiseases);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_InventarisState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_InventarisState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_InventarisState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _InventarisState implements InventarisState {
  const factory _InventarisState(
      {required IList<InventarisModel> invetarisList,
      required Option<Either<ResponseError, IList<InventarisModel>>>
          optionFailureOrDiseases}) = _$_InventarisState;

  IList<InventarisModel> get invetarisList;
  Option<Either<ResponseError, IList<InventarisModel>>>
      get optionFailureOrDiseases;
  @JsonKey(ignore: true)
  _$InventarisStateCopyWith<_InventarisState> get copyWith =>
      throw _privateConstructorUsedError;
}
