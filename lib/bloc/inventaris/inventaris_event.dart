part of 'inventaris_bloc.dart';

@freezed
class InventarisEvent with _$InventarisEvent {
  const factory InventarisEvent.watchAll(BuildContext context,int idKota) = _watchAll;
}
