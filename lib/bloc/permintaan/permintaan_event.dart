part of 'permintaan_bloc.dart';

@freezed
class PermintaanEvent with _$PermintaanEvent {
  const factory PermintaanEvent.watchAll(BuildContext context,int idKota) = _watchAll;
  const factory PermintaanEvent.submit(BuildContext context, Permintaan permintaan, int idUser) = _submit;
}

