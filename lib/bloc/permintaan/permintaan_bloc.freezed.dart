// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'permintaan_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PermintaanEventTearOff {
  const _$PermintaanEventTearOff();

  _watchAll watchAll(BuildContext context, int idKota) {
    return _watchAll(
      context,
      idKota,
    );
  }

  _submit submit(BuildContext context, Permintaan permintaan, int idUser) {
    return _submit(
      context,
      permintaan,
      idUser,
    );
  }
}

/// @nodoc
const $PermintaanEvent = _$PermintaanEventTearOff();

/// @nodoc
mixin _$PermintaanEvent {
  BuildContext get context => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, int idKota) watchAll,
    required TResult Function(
            BuildContext context, Permintaan permintaan, int idUser)
        submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, int idKota)? watchAll,
    TResult Function(BuildContext context, Permintaan permintaan, int idUser)?
        submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, int idKota)? watchAll,
    TResult Function(BuildContext context, Permintaan permintaan, int idUser)?
        submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_watchAll value) watchAll,
    required TResult Function(_submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_watchAll value)? watchAll,
    TResult Function(_submit value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_watchAll value)? watchAll,
    TResult Function(_submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PermintaanEventCopyWith<PermintaanEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermintaanEventCopyWith<$Res> {
  factory $PermintaanEventCopyWith(
          PermintaanEvent value, $Res Function(PermintaanEvent) then) =
      _$PermintaanEventCopyWithImpl<$Res>;
  $Res call({BuildContext context});
}

/// @nodoc
class _$PermintaanEventCopyWithImpl<$Res>
    implements $PermintaanEventCopyWith<$Res> {
  _$PermintaanEventCopyWithImpl(this._value, this._then);

  final PermintaanEvent _value;
  // ignore: unused_field
  final $Res Function(PermintaanEvent) _then;

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
abstract class _$watchAllCopyWith<$Res>
    implements $PermintaanEventCopyWith<$Res> {
  factory _$watchAllCopyWith(_watchAll value, $Res Function(_watchAll) then) =
      __$watchAllCopyWithImpl<$Res>;
  @override
  $Res call({BuildContext context, int idKota});
}

/// @nodoc
class __$watchAllCopyWithImpl<$Res> extends _$PermintaanEventCopyWithImpl<$Res>
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
    return 'PermintaanEvent.watchAll(context: $context, idKota: $idKota)';
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
    required TResult Function(
            BuildContext context, Permintaan permintaan, int idUser)
        submit,
  }) {
    return watchAll(context, idKota);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, int idKota)? watchAll,
    TResult Function(BuildContext context, Permintaan permintaan, int idUser)?
        submit,
  }) {
    return watchAll?.call(context, idKota);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, int idKota)? watchAll,
    TResult Function(BuildContext context, Permintaan permintaan, int idUser)?
        submit,
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
    required TResult Function(_submit value) submit,
  }) {
    return watchAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_watchAll value)? watchAll,
    TResult Function(_submit value)? submit,
  }) {
    return watchAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_watchAll value)? watchAll,
    TResult Function(_submit value)? submit,
    required TResult orElse(),
  }) {
    if (watchAll != null) {
      return watchAll(this);
    }
    return orElse();
  }
}

abstract class _watchAll implements PermintaanEvent {
  const factory _watchAll(BuildContext context, int idKota) = _$_watchAll;

  @override
  BuildContext get context;
  int get idKota;
  @override
  @JsonKey(ignore: true)
  _$watchAllCopyWith<_watchAll> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$submitCopyWith<$Res>
    implements $PermintaanEventCopyWith<$Res> {
  factory _$submitCopyWith(_submit value, $Res Function(_submit) then) =
      __$submitCopyWithImpl<$Res>;
  @override
  $Res call({BuildContext context, Permintaan permintaan, int idUser});

  $PermintaanCopyWith<$Res> get permintaan;
}

/// @nodoc
class __$submitCopyWithImpl<$Res> extends _$PermintaanEventCopyWithImpl<$Res>
    implements _$submitCopyWith<$Res> {
  __$submitCopyWithImpl(_submit _value, $Res Function(_submit) _then)
      : super(_value, (v) => _then(v as _submit));

  @override
  _submit get _value => super._value as _submit;

  @override
  $Res call({
    Object? context = freezed,
    Object? permintaan = freezed,
    Object? idUser = freezed,
  }) {
    return _then(_submit(
      context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      permintaan == freezed
          ? _value.permintaan
          : permintaan // ignore: cast_nullable_to_non_nullable
              as Permintaan,
      idUser == freezed
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $PermintaanCopyWith<$Res> get permintaan {
    return $PermintaanCopyWith<$Res>(_value.permintaan, (value) {
      return _then(_value.copyWith(permintaan: value));
    });
  }
}

/// @nodoc

class _$_submit implements _submit {
  const _$_submit(this.context, this.permintaan, this.idUser);

  @override
  final BuildContext context;
  @override
  final Permintaan permintaan;
  @override
  final int idUser;

  @override
  String toString() {
    return 'PermintaanEvent.submit(context: $context, permintaan: $permintaan, idUser: $idUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _submit &&
            const DeepCollectionEquality().equals(other.context, context) &&
            const DeepCollectionEquality()
                .equals(other.permintaan, permintaan) &&
            const DeepCollectionEquality().equals(other.idUser, idUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(context),
      const DeepCollectionEquality().hash(permintaan),
      const DeepCollectionEquality().hash(idUser));

  @JsonKey(ignore: true)
  @override
  _$submitCopyWith<_submit> get copyWith =>
      __$submitCopyWithImpl<_submit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, int idKota) watchAll,
    required TResult Function(
            BuildContext context, Permintaan permintaan, int idUser)
        submit,
  }) {
    return submit(context, permintaan, idUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, int idKota)? watchAll,
    TResult Function(BuildContext context, Permintaan permintaan, int idUser)?
        submit,
  }) {
    return submit?.call(context, permintaan, idUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, int idKota)? watchAll,
    TResult Function(BuildContext context, Permintaan permintaan, int idUser)?
        submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(context, permintaan, idUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_watchAll value) watchAll,
    required TResult Function(_submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_watchAll value)? watchAll,
    TResult Function(_submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_watchAll value)? watchAll,
    TResult Function(_submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _submit implements PermintaanEvent {
  const factory _submit(
      BuildContext context, Permintaan permintaan, int idUser) = _$_submit;

  @override
  BuildContext get context;
  Permintaan get permintaan;
  int get idUser;
  @override
  @JsonKey(ignore: true)
  _$submitCopyWith<_submit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$PermintaanStateTearOff {
  const _$PermintaanStateTearOff();

  _PermintaanState call(
      {required IList<Permintaan> listPermintaan,
      required bool loadingSubmit,
      required bool loadingFetch,
      required Option<Either<ResponseError, Permintaan>> optionSubmit,
      required Option<Either<ResponseError, IList<Permintaan>>> optionGet}) {
    return _PermintaanState(
      listPermintaan: listPermintaan,
      loadingSubmit: loadingSubmit,
      loadingFetch: loadingFetch,
      optionSubmit: optionSubmit,
      optionGet: optionGet,
    );
  }
}

/// @nodoc
const $PermintaanState = _$PermintaanStateTearOff();

/// @nodoc
mixin _$PermintaanState {
  IList<Permintaan> get listPermintaan => throw _privateConstructorUsedError;
  bool get loadingSubmit => throw _privateConstructorUsedError;
  bool get loadingFetch => throw _privateConstructorUsedError;
  Option<Either<ResponseError, Permintaan>> get optionSubmit =>
      throw _privateConstructorUsedError;
  Option<Either<ResponseError, IList<Permintaan>>> get optionGet =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PermintaanStateCopyWith<PermintaanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermintaanStateCopyWith<$Res> {
  factory $PermintaanStateCopyWith(
          PermintaanState value, $Res Function(PermintaanState) then) =
      _$PermintaanStateCopyWithImpl<$Res>;
  $Res call(
      {IList<Permintaan> listPermintaan,
      bool loadingSubmit,
      bool loadingFetch,
      Option<Either<ResponseError, Permintaan>> optionSubmit,
      Option<Either<ResponseError, IList<Permintaan>>> optionGet});
}

/// @nodoc
class _$PermintaanStateCopyWithImpl<$Res>
    implements $PermintaanStateCopyWith<$Res> {
  _$PermintaanStateCopyWithImpl(this._value, this._then);

  final PermintaanState _value;
  // ignore: unused_field
  final $Res Function(PermintaanState) _then;

  @override
  $Res call({
    Object? listPermintaan = freezed,
    Object? loadingSubmit = freezed,
    Object? loadingFetch = freezed,
    Object? optionSubmit = freezed,
    Object? optionGet = freezed,
  }) {
    return _then(_value.copyWith(
      listPermintaan: listPermintaan == freezed
          ? _value.listPermintaan
          : listPermintaan // ignore: cast_nullable_to_non_nullable
              as IList<Permintaan>,
      loadingSubmit: loadingSubmit == freezed
          ? _value.loadingSubmit
          : loadingSubmit // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingFetch: loadingFetch == freezed
          ? _value.loadingFetch
          : loadingFetch // ignore: cast_nullable_to_non_nullable
              as bool,
      optionSubmit: optionSubmit == freezed
          ? _value.optionSubmit
          : optionSubmit // ignore: cast_nullable_to_non_nullable
              as Option<Either<ResponseError, Permintaan>>,
      optionGet: optionGet == freezed
          ? _value.optionGet
          : optionGet // ignore: cast_nullable_to_non_nullable
              as Option<Either<ResponseError, IList<Permintaan>>>,
    ));
  }
}

/// @nodoc
abstract class _$PermintaanStateCopyWith<$Res>
    implements $PermintaanStateCopyWith<$Res> {
  factory _$PermintaanStateCopyWith(
          _PermintaanState value, $Res Function(_PermintaanState) then) =
      __$PermintaanStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {IList<Permintaan> listPermintaan,
      bool loadingSubmit,
      bool loadingFetch,
      Option<Either<ResponseError, Permintaan>> optionSubmit,
      Option<Either<ResponseError, IList<Permintaan>>> optionGet});
}

/// @nodoc
class __$PermintaanStateCopyWithImpl<$Res>
    extends _$PermintaanStateCopyWithImpl<$Res>
    implements _$PermintaanStateCopyWith<$Res> {
  __$PermintaanStateCopyWithImpl(
      _PermintaanState _value, $Res Function(_PermintaanState) _then)
      : super(_value, (v) => _then(v as _PermintaanState));

  @override
  _PermintaanState get _value => super._value as _PermintaanState;

  @override
  $Res call({
    Object? listPermintaan = freezed,
    Object? loadingSubmit = freezed,
    Object? loadingFetch = freezed,
    Object? optionSubmit = freezed,
    Object? optionGet = freezed,
  }) {
    return _then(_PermintaanState(
      listPermintaan: listPermintaan == freezed
          ? _value.listPermintaan
          : listPermintaan // ignore: cast_nullable_to_non_nullable
              as IList<Permintaan>,
      loadingSubmit: loadingSubmit == freezed
          ? _value.loadingSubmit
          : loadingSubmit // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingFetch: loadingFetch == freezed
          ? _value.loadingFetch
          : loadingFetch // ignore: cast_nullable_to_non_nullable
              as bool,
      optionSubmit: optionSubmit == freezed
          ? _value.optionSubmit
          : optionSubmit // ignore: cast_nullable_to_non_nullable
              as Option<Either<ResponseError, Permintaan>>,
      optionGet: optionGet == freezed
          ? _value.optionGet
          : optionGet // ignore: cast_nullable_to_non_nullable
              as Option<Either<ResponseError, IList<Permintaan>>>,
    ));
  }
}

/// @nodoc

class _$_PermintaanState implements _PermintaanState {
  const _$_PermintaanState(
      {required this.listPermintaan,
      required this.loadingSubmit,
      required this.loadingFetch,
      required this.optionSubmit,
      required this.optionGet});

  @override
  final IList<Permintaan> listPermintaan;
  @override
  final bool loadingSubmit;
  @override
  final bool loadingFetch;
  @override
  final Option<Either<ResponseError, Permintaan>> optionSubmit;
  @override
  final Option<Either<ResponseError, IList<Permintaan>>> optionGet;

  @override
  String toString() {
    return 'PermintaanState(listPermintaan: $listPermintaan, loadingSubmit: $loadingSubmit, loadingFetch: $loadingFetch, optionSubmit: $optionSubmit, optionGet: $optionGet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PermintaanState &&
            const DeepCollectionEquality()
                .equals(other.listPermintaan, listPermintaan) &&
            const DeepCollectionEquality()
                .equals(other.loadingSubmit, loadingSubmit) &&
            const DeepCollectionEquality()
                .equals(other.loadingFetch, loadingFetch) &&
            const DeepCollectionEquality()
                .equals(other.optionSubmit, optionSubmit) &&
            const DeepCollectionEquality().equals(other.optionGet, optionGet));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(listPermintaan),
      const DeepCollectionEquality().hash(loadingSubmit),
      const DeepCollectionEquality().hash(loadingFetch),
      const DeepCollectionEquality().hash(optionSubmit),
      const DeepCollectionEquality().hash(optionGet));

  @JsonKey(ignore: true)
  @override
  _$PermintaanStateCopyWith<_PermintaanState> get copyWith =>
      __$PermintaanStateCopyWithImpl<_PermintaanState>(this, _$identity);
}

abstract class _PermintaanState implements PermintaanState {
  const factory _PermintaanState(
      {required IList<Permintaan> listPermintaan,
      required bool loadingSubmit,
      required bool loadingFetch,
      required Option<Either<ResponseError, Permintaan>> optionSubmit,
      required Option<Either<ResponseError, IList<Permintaan>>>
          optionGet}) = _$_PermintaanState;

  @override
  IList<Permintaan> get listPermintaan;
  @override
  bool get loadingSubmit;
  @override
  bool get loadingFetch;
  @override
  Option<Either<ResponseError, Permintaan>> get optionSubmit;
  @override
  Option<Either<ResponseError, IList<Permintaan>>> get optionGet;
  @override
  @JsonKey(ignore: true)
  _$PermintaanStateCopyWith<_PermintaanState> get copyWith =>
      throw _privateConstructorUsedError;
}
