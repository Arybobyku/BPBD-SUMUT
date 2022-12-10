part of 'inventaris_bloc.dart';

@freezed
class InventarisState with _$InventarisState{

  const factory InventarisState.initial()= _Initial;
  const factory InventarisState.loading()= _Loading;
  const factory InventarisState.error(String error)= _Error;
  const factory InventarisState.loaded({
    required IList<InventarisModel> invetarisList,
    required Option<Either<ResponseError,IList<InventarisModel>>> optionFailureOrDiseases
  })=_InventarisState;


}
