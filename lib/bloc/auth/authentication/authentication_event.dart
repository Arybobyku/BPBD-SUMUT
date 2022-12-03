part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.register(BuildContext context,MeModel meModel) = _Register;
  const factory AuthenticationEvent.login(BuildContext context,MeModel meModel) = _Login;
  const factory AuthenticationEvent.logout(BuildContext context) = _Logout;
  const factory AuthenticationEvent.initialize(BuildContext context,MeModel meModel) = _Initialize;
}