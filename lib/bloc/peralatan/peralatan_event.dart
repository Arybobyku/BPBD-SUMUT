part of 'peralatan_bloc.dart';

@freezed
class PeralatanEvent with _$PeralatanEvent {
  const factory PeralatanEvent.watchAll(BuildContext context,int idKota) = _watchAll;
}

