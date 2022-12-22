part of 'kota_bloc.dart';

@freezed
class KotaState with _$KotaState {
  const factory KotaState.initial() = _Initial;

  const factory KotaState.loading() = _Loading;

  const factory KotaState.empty() = _Empty;

  const factory KotaState.error(String error) = _Error;

  const factory KotaState.loaded({
    required IList<KotaModel> listKota,
    required Option<Either<ResponseError, IList<KotaModel>>>
        optionFailureOrSucces,
  }) = _Loaded;
}
