// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i9;

import 'bloc/auth/authentication/authentication_bloc.dart' as _i15;
import 'bloc/banner/banner_bloc.dart' as _i16;
import 'bloc/inventaris/inventaris_bloc.dart' as _i17;
import 'bloc/landing/landing_bloc.dart' as _i8;
import 'bloc/logistik/logistik_bloc.dart' as _i18;
import 'bloc/peralatan/peralatan_bloc.dart' as _i19;
import 'data/database/interface/i_local_user_repository.dart' as _i5;
import 'data/database/repositories/local_user_repository.dart' as _i6;
import 'di/register_module.dart' as _i20;
import 'request/authentication/authentication_request.dart' as _i3;
import 'request/banner/banner_request.dart' as _i4;
import 'request/inventaris/inventaris_request.dart' as _i7;
import 'request/logistik/logistik_request.dart' as _i10;
import 'request/peralatan/peralatan_request.dart' as _i13;
import 'simple_bloc_delegate.dart' as _i14;
import 'ui/my_app.dart' as _i11; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i4.BannerRequest>(() => _i4.BannerRequestBase());
  gh.lazySingleton<_i5.ILocalUserRepository>(() => _i6.LocalUserRepository());
  gh.lazySingleton<_i7.InventarisRequest>(() => _i7.InvetarisRequestBase());
  gh.factory<_i8.LandingBloc>(() => _i8.LandingBloc());
  gh.lazySingleton<_i9.Logger>(() => registerModule.logger);
  gh.lazySingleton<_i10.LogistikRequest>(() => _i10.LogistikRequestBase());
  gh.factory<_i11.MyApp>(() => _i11.MyApp(key: get<_i12.Key>()));
  gh.lazySingleton<_i13.PeralatanRequest>(() => _i13.PeralatanRequestBase());
  gh.factory<_i14.SimpleBlocObserver>(
      () => _i14.SimpleBlocObserver(get<_i9.Logger>()));
  gh.factory<_i15.AuthenticationBloc>(
      () => _i15.AuthenticationBloc(get<_i3.AuthenticationRequest>()));
  gh.factory<_i16.BannerBloc>(() => _i16.BannerBloc(get<_i4.BannerRequest>()));
  gh.factory<_i17.InventarisBloc>(
      () => _i17.InventarisBloc(get<_i7.InventarisRequest>()));
  gh.factory<_i18.LogistikBloc>(
      () => _i18.LogistikBloc(get<_i10.LogistikRequest>()));
  gh.factory<_i19.PeralatanBloc>(
      () => _i19.PeralatanBloc(get<_i13.PeralatanRequest>()));
  return get;
}

class _$RegisterModule extends _i20.RegisterModule {}
