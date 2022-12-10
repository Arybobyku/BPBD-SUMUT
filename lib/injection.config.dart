// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i11;

import 'bloc/auth/authentication/authentication_bloc.dart' as _i15;
import 'bloc/CBRAndRBR/cbr_and_rbr_bloc.dart' as _i4;
import 'bloc/disease/disease_bloc.dart' as _i16;
import 'bloc/home/home_bloc.dart' as _i17;
import 'bloc/inventaris/inventaris_bloc.dart' as _i18;
import 'bloc/landing/landing_bloc.dart' as _i10;
import 'bloc/symptom/symptom_bloc.dart' as _i19;
import 'database/interface/i_local_user_repository.dart' as _i7;
import 'database/repositories/local_user_repository.dart' as _i8;
import 'di/register_module.dart' as _i20;
import 'request/authentication/authentication_request.dart' as _i3;
import 'request/disease/disease_request.dart' as _i5;
import 'request/home/home_request.dart' as _i6;
import 'request/inventaris/inventaris_request.dart' as _i9;
import 'request/symtpom/symptom_request.dart' as _i14;
import 'simple_bloc_delegate.dart' as _i13;
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
  gh.factory<_i4.CbrAndRbrBloc>(() => _i4.CbrAndRbrBloc());
  gh.lazySingleton<_i5.DiseaseRequest>(() => _i5.DiseaseRequestBase());
  gh.lazySingleton<_i6.HomeRequest>(() => _i6.HomeRequestBase());
  gh.lazySingleton<_i7.ILocalUserRepository>(() => _i8.LocalUserRepository());
  gh.lazySingleton<_i9.InventarisRequest>(() => _i9.InvetarisRequestBase());
  gh.factory<_i10.LandingBloc>(() => _i10.LandingBloc());
  gh.lazySingleton<_i11.Logger>(() => registerModule.logger);
  gh.factory<_i12.MyApp>(() => _i12.MyApp());
  gh.factory<_i13.SimpleBlocObserver>(
      () => _i13.SimpleBlocObserver(get<_i11.Logger>()));
  gh.lazySingleton<_i14.SymptomRequest>(() => _i14.SymptomRequestBase());
  gh.factory<_i15.AuthenticationBloc>(
      () => _i15.AuthenticationBloc(get<_i3.AuthenticationRequest>()));
  gh.factory<_i16.DiseaseBloc>(
      () => _i16.DiseaseBloc(get<_i5.DiseaseRequest>()));
  gh.factory<_i17.HomeBloc>(() => _i17.HomeBloc(get<_i6.HomeRequest>()));
  gh.factory<_i18.InventarisBloc>(
      () => _i18.InventarisBloc(get<_i9.InventarisRequest>()));
  gh.factory<_i19.SymptomBloc>(
      () => _i19.SymptomBloc(get<_i14.SymptomRequest>()));
  return get;
}

class _$RegisterModule extends _i20.RegisterModule {}
