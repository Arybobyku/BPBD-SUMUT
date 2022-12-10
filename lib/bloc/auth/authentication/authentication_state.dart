part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    required MeModel? meModel,
    required String? token,
    required bool isLoading,
    required bool isAuthenticated,
    required Option<Either<ResponseError, AuthenticationModel>>
    optionFailureOrSuccess,
  }) = _AuthenticationState;

  factory AuthenticationState.initial() => AuthenticationState(
    optionFailureOrSuccess: none(),
    isLoading: false,
    isAuthenticated: false,
    meModel: null,
    token: null,
  );
}
