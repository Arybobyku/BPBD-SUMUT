// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'banner_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BannerEventTearOff {
  const _$BannerEventTearOff();

  _watchAll watchAll(BuildContext context, int idKota) {
    return _watchAll(
      context,
      idKota,
    );
  }
}

/// @nodoc
const $BannerEvent = _$BannerEventTearOff();

/// @nodoc
mixin _$BannerEvent {
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
  $BannerEventCopyWith<BannerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerEventCopyWith<$Res> {
  factory $BannerEventCopyWith(
          BannerEvent value, $Res Function(BannerEvent) then) =
      _$BannerEventCopyWithImpl<$Res>;
  $Res call({BuildContext context, int idKota});
}

/// @nodoc
class _$BannerEventCopyWithImpl<$Res> implements $BannerEventCopyWith<$Res> {
  _$BannerEventCopyWithImpl(this._value, this._then);

  final BannerEvent _value;
  // ignore: unused_field
  final $Res Function(BannerEvent) _then;

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
abstract class _$watchAllCopyWith<$Res> implements $BannerEventCopyWith<$Res> {
  factory _$watchAllCopyWith(_watchAll value, $Res Function(_watchAll) then) =
      __$watchAllCopyWithImpl<$Res>;
  @override
  $Res call({BuildContext context, int idKota});
}

/// @nodoc
class __$watchAllCopyWithImpl<$Res> extends _$BannerEventCopyWithImpl<$Res>
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
    return 'BannerEvent.watchAll(context: $context, idKota: $idKota)';
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

abstract class _watchAll implements BannerEvent {
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
class _$BannerStateTearOff {
  const _$BannerStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Empty empty() {
    return const _Empty();
  }

  _Error error(String error) {
    return _Error(
      error,
    );
  }

  _BannerState loaded(
      {required IList<BannerModel> bannerList,
      required Option<Either<ResponseError, IList<BannerModel>>>
          optionFailureOrSuccess}) {
    return _BannerState(
      bannerList: bannerList,
      optionFailureOrSuccess: optionFailureOrSuccess,
    );
  }
}

/// @nodoc
const $BannerState = _$BannerStateTearOff();

/// @nodoc
mixin _$BannerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(String error) error,
    required TResult Function(
            IList<BannerModel> bannerList,
            Option<Either<ResponseError, IList<BannerModel>>>
                optionFailureOrSuccess)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String error)? error,
    TResult Function(
            IList<BannerModel> bannerList,
            Option<Either<ResponseError, IList<BannerModel>>>
                optionFailureOrSuccess)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String error)? error,
    TResult Function(
            IList<BannerModel> bannerList,
            Option<Either<ResponseError, IList<BannerModel>>>
                optionFailureOrSuccess)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
    required TResult Function(_BannerState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    TResult Function(_BannerState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    TResult Function(_BannerState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerStateCopyWith<$Res> {
  factory $BannerStateCopyWith(
          BannerState value, $Res Function(BannerState) then) =
      _$BannerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BannerStateCopyWithImpl<$Res> implements $BannerStateCopyWith<$Res> {
  _$BannerStateCopyWithImpl(this._value, this._then);

  final BannerState _value;
  // ignore: unused_field
  final $Res Function(BannerState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$BannerStateCopyWithImpl<$Res>
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
    return 'BannerState.initial()';
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
    required TResult Function() empty,
    required TResult Function(String error) error,
    required TResult Function(
            IList<BannerModel> bannerList,
            Option<Either<ResponseError, IList<BannerModel>>>
                optionFailureOrSuccess)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String error)? error,
    TResult Function(
            IList<BannerModel> bannerList,
            Option<Either<ResponseError, IList<BannerModel>>>
                optionFailureOrSuccess)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String error)? error,
    TResult Function(
            IList<BannerModel> bannerList,
            Option<Either<ResponseError, IList<BannerModel>>>
                optionFailureOrSuccess)?
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
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
    required TResult Function(_BannerState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    TResult Function(_BannerState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    TResult Function(_BannerState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BannerState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$BannerStateCopyWithImpl<$Res>
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
    return 'BannerState.loading()';
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
    required TResult Function() empty,
    required TResult Function(String error) error,
    required TResult Function(
            IList<BannerModel> bannerList,
            Option<Either<ResponseError, IList<BannerModel>>>
                optionFailureOrSuccess)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String error)? error,
    TResult Function(
            IList<BannerModel> bannerList,
            Option<Either<ResponseError, IList<BannerModel>>>
                optionFailureOrSuccess)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String error)? error,
    TResult Function(
            IList<BannerModel> bannerList,
            Option<Either<ResponseError, IList<BannerModel>>>
                optionFailureOrSuccess)?
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
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
    required TResult Function(_BannerState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    TResult Function(_BannerState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    TResult Function(_BannerState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements BannerState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$EmptyCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) then) =
      __$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmptyCopyWithImpl<$Res> extends _$BannerStateCopyWithImpl<$Res>
    implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(_Empty _value, $Res Function(_Empty) _then)
      : super(_value, (v) => _then(v as _Empty));

  @override
  _Empty get _value => super._value as _Empty;
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty();

  @override
  String toString() {
    return 'BannerState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(String error) error,
    required TResult Function(
            IList<BannerModel> bannerList,
            Option<Either<ResponseError, IList<BannerModel>>>
                optionFailureOrSuccess)
        loaded,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String error)? error,
    TResult Function(
            IList<BannerModel> bannerList,
            Option<Either<ResponseError, IList<BannerModel>>>
                optionFailureOrSuccess)?
        loaded,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String error)? error,
    TResult Function(
            IList<BannerModel> bannerList,
            Option<Either<ResponseError, IList<BannerModel>>>
                optionFailureOrSuccess)?
        loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
    required TResult Function(_BannerState value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    TResult Function(_BannerState value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    TResult Function(_BannerState value)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements BannerState {
  const factory _Empty() = _$_Empty;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$BannerStateCopyWithImpl<$Res>
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
    return 'BannerState.error(error: $error)';
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
    required TResult Function() empty,
    required TResult Function(String error) error,
    required TResult Function(
            IList<BannerModel> bannerList,
            Option<Either<ResponseError, IList<BannerModel>>>
                optionFailureOrSuccess)
        loaded,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String error)? error,
    TResult Function(
            IList<BannerModel> bannerList,
            Option<Either<ResponseError, IList<BannerModel>>>
                optionFailureOrSuccess)?
        loaded,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String error)? error,
    TResult Function(
            IList<BannerModel> bannerList,
            Option<Either<ResponseError, IList<BannerModel>>>
                optionFailureOrSuccess)?
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
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
    required TResult Function(_BannerState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    TResult Function(_BannerState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    TResult Function(_BannerState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements BannerState {
  const factory _Error(String error) = _$_Error;

  String get error;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BannerStateCopyWith<$Res> {
  factory _$BannerStateCopyWith(
          _BannerState value, $Res Function(_BannerState) then) =
      __$BannerStateCopyWithImpl<$Res>;
  $Res call(
      {IList<BannerModel> bannerList,
      Option<Either<ResponseError, IList<BannerModel>>>
          optionFailureOrSuccess});
}

/// @nodoc
class __$BannerStateCopyWithImpl<$Res> extends _$BannerStateCopyWithImpl<$Res>
    implements _$BannerStateCopyWith<$Res> {
  __$BannerStateCopyWithImpl(
      _BannerState _value, $Res Function(_BannerState) _then)
      : super(_value, (v) => _then(v as _BannerState));

  @override
  _BannerState get _value => super._value as _BannerState;

  @override
  $Res call({
    Object? bannerList = freezed,
    Object? optionFailureOrSuccess = freezed,
  }) {
    return _then(_BannerState(
      bannerList: bannerList == freezed
          ? _value.bannerList
          : bannerList // ignore: cast_nullable_to_non_nullable
              as IList<BannerModel>,
      optionFailureOrSuccess: optionFailureOrSuccess == freezed
          ? _value.optionFailureOrSuccess
          : optionFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ResponseError, IList<BannerModel>>>,
    ));
  }
}

/// @nodoc

class _$_BannerState implements _BannerState {
  const _$_BannerState(
      {required this.bannerList, required this.optionFailureOrSuccess});

  @override
  final IList<BannerModel> bannerList;
  @override
  final Option<Either<ResponseError, IList<BannerModel>>>
      optionFailureOrSuccess;

  @override
  String toString() {
    return 'BannerState.loaded(bannerList: $bannerList, optionFailureOrSuccess: $optionFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BannerState &&
            const DeepCollectionEquality()
                .equals(other.bannerList, bannerList) &&
            const DeepCollectionEquality()
                .equals(other.optionFailureOrSuccess, optionFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bannerList),
      const DeepCollectionEquality().hash(optionFailureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$BannerStateCopyWith<_BannerState> get copyWith =>
      __$BannerStateCopyWithImpl<_BannerState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(String error) error,
    required TResult Function(
            IList<BannerModel> bannerList,
            Option<Either<ResponseError, IList<BannerModel>>>
                optionFailureOrSuccess)
        loaded,
  }) {
    return loaded(bannerList, optionFailureOrSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String error)? error,
    TResult Function(
            IList<BannerModel> bannerList,
            Option<Either<ResponseError, IList<BannerModel>>>
                optionFailureOrSuccess)?
        loaded,
  }) {
    return loaded?.call(bannerList, optionFailureOrSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String error)? error,
    TResult Function(
            IList<BannerModel> bannerList,
            Option<Either<ResponseError, IList<BannerModel>>>
                optionFailureOrSuccess)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(bannerList, optionFailureOrSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
    required TResult Function(_BannerState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    TResult Function(_BannerState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    TResult Function(_BannerState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _BannerState implements BannerState {
  const factory _BannerState(
      {required IList<BannerModel> bannerList,
      required Option<Either<ResponseError, IList<BannerModel>>>
          optionFailureOrSuccess}) = _$_BannerState;

  IList<BannerModel> get bannerList;
  Option<Either<ResponseError, IList<BannerModel>>> get optionFailureOrSuccess;
  @JsonKey(ignore: true)
  _$BannerStateCopyWith<_BannerState> get copyWith =>
      throw _privateConstructorUsedError;
}
