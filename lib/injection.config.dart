// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i8;

import 'bloc/auth/authentication/authentication_bloc.dart' as _i14;
import 'bloc/inventaris/inventaris_bloc.dart' as _i15;
import 'bloc/landing/landing_bloc.dart' as _i7;
import 'bloc/logistik/logistik_bloc.dart' as _i16;
import 'bloc/peralatan/peralatan_bloc.dart' as _i17;
import 'data/database/interface/i_local_user_repository.dart' as _i4;
import 'data/database/repositories/local_user_repository.dart' as _i5;
import 'di/register_module.dart' as _i18;
import 'request/authentication/authentication_request.dart' as _i3;
import 'request/inventaris/inventaris_request.dart' as _i6;
import 'request/logistik/logistik_request.dart' as _i9;
import 'request/peralatan/peralatan_request.dart' as _i12;
import 'simple_bloc_delegate.dart' as _i13;
import 'ui/my_app.dart' as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.AuthenticationRequest>(
      () => _i3.AuthenticationRequestBase());
  gh.lazySingleton<_i4.ILocalUserRepository>(() => _i5.LocalUserRepository());
  gh.lazySingleton<_i6.InventarisRequest>(() => _i6.InvetarisRequestBase());
  gh.factory<_i7.LandingBloc>(() => _i7.LandingBloc());
  gh.lazySingleton<_i8.Logger>(() => registerModule.logger);
  gh.lazySingleton<_i9.LogistikRequest>(() => _i9.LogistikRequestBase());
  gh.factory<_i10.MyApp>(() => _i10.MyApp(key: get<_i11.Key>()));
  gh.lazySingleton<_i12.PeralatanRequest>(() => _i12.PeralatanRequestBase());
  gh.factory<_i13.SimpleBlocObserver>(
      () => _i13.SimpleBlocObserver(get<_i8.Logger>()));
  gh.factory<_i14.AuthenticationBloc>(
      () => _i14.AuthenticationBloc(get<_i3.AuthenticationRequest>()));
  gh.factory<_i15.InventarisBloc>(
      () => _i15.InventarisBloc(get<_i6.InventarisRequest>()));
  gh.factory<_i16.LogistikBloc>(
      () => _i16.LogistikBloc(get<_i9.LogistikRequest>()));
  gh.factory<_i17.PeralatanBloc>(
      () => _i17.PeralatanBloc(get<_i12.PeralatanRequest>()));
  return get;
}

class _$RegisterModule extends _i18.RegisterModule {}
