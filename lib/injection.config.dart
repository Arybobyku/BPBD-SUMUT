// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i13;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i10;

import 'bloc/auth/authentication/authentication_bloc.dart' as _i17;
import 'bloc/banner/banner_bloc.dart' as _i18;
import 'bloc/inventaris/inventaris_bloc.dart' as _i19;
import 'bloc/kota/kota_bloc.dart' as _i20;
import 'bloc/landing/landing_bloc.dart' as _i9;
import 'bloc/logistik/logistik_bloc.dart' as _i21;
import 'bloc/peralatan/peralatan_bloc.dart' as _i22;
import 'bloc/permintaan/permintaan_bloc.dart' as _i23;
import 'data/database/interface/i_local_user_repository.dart' as _i5;
import 'data/database/repositories/local_user_repository.dart' as _i6;
import 'di/register_module.dart' as _i24;
import 'request/authentication/authentication_request.dart' as _i3;
import 'request/banner/banner_request.dart' as _i4;
import 'request/inventaris/inventaris_request.dart' as _i7;
import 'request/kota/kota_request.dart' as _i8;
import 'request/logistik/logistik_request.dart' as _i11;
import 'request/peralatan/peralatan_request.dart' as _i14;
import 'request/permintaan/permintaan_request.dart' as _i15;
import 'simple_bloc_delegate.dart' as _i16;
import 'ui/my_app.dart' as _i12; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i8.KotaRequestBase>(() => _i8.KotaRequest());
  gh.factory<_i9.LandingBloc>(() => _i9.LandingBloc());
  gh.lazySingleton<_i10.Logger>(() => registerModule.logger);
  gh.lazySingleton<_i11.LogistikRequest>(() => _i11.LogistikRequestBase());
  gh.factory<_i12.MyApp>(() => _i12.MyApp(key: get<_i13.Key>()));
  gh.lazySingleton<_i14.PeralatanRequest>(() => _i14.PeralatanRequestBase());
  gh.lazySingleton<_i15.PermintaanRequestBase>(() => _i15.PermintaanRequest());
  gh.factory<_i16.SimpleBlocObserver>(
      () => _i16.SimpleBlocObserver(get<_i10.Logger>()));
  gh.factory<_i17.AuthenticationBloc>(
      () => _i17.AuthenticationBloc(get<_i3.AuthenticationRequest>()));
  gh.factory<_i18.BannerBloc>(() => _i18.BannerBloc(get<_i4.BannerRequest>()));
  gh.factory<_i19.InventarisBloc>(
      () => _i19.InventarisBloc(get<_i7.InventarisRequest>()));
  gh.factory<_i20.KotaBloc>(() => _i20.KotaBloc(get<_i8.KotaRequestBase>()));
  gh.factory<_i21.LogistikBloc>(
      () => _i21.LogistikBloc(get<_i11.LogistikRequest>()));
  gh.factory<_i22.PeralatanBloc>(
      () => _i22.PeralatanBloc(get<_i14.PeralatanRequest>()));
  gh.factory<_i23.PermintaanBloc>(
      () => _i23.PermintaanBloc(get<_i15.PermintaanRequestBase>()));
  return get;
}

class _$RegisterModule extends _i24.RegisterModule {}
