part of 'peralatan_bloc.dart';

@freezed
class PeralatanState with _$PeralatanState{

  const factory PeralatanState.initial()= _Initial;
  const factory PeralatanState.loading()= _Loading;
  const factory PeralatanState.empty()= _Empty;
  const factory PeralatanState.error(String error)= _Error;
  const factory PeralatanState.loaded({
    required IList<Peralatan> invetarisList,
    required Option<Either<ResponseError,IList<Peralatan>>> optionFailureOrSucces
  })=_Loaded;


}
