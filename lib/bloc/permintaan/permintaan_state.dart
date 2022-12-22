part of 'permintaan_bloc.dart';

@freezed
class PermintaanState with _$PermintaanState {
  const factory PermintaanState({
    required IList<Permintaan> listPermintaan,
    required bool loadingSubmit,
    required bool loadingFetch,
    required Option<Either<ResponseError, Permintaan>> optionSubmit,
    required Option<Either<ResponseError, IList<Permintaan>>> optionGet,
  }) = _PermintaanState;

  factory PermintaanState.initial() => PermintaanState(
        loadingFetch: false,
        loadingSubmit: false,
        optionSubmit: none(),
        optionGet: none(),
        listPermintaan: <Permintaan>[].lock,
      );
}
