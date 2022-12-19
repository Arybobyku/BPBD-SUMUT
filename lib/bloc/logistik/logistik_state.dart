part of 'logistik_bloc.dart';

@freezed
class LogistikState with _$LogistikState{

  const factory LogistikState.initial()= _Initial;
  const factory LogistikState.loading()= _Loading;
  const factory LogistikState.empty()= _Empty;
  const factory LogistikState.error(String error)= _Error;
  const factory LogistikState.loaded({
    required IList<Logistik> invetarisList,
    required Option<Either<ResponseError,IList<Logistik>>> optionFailureOrSucces
  })=_Loaded;


}