import 'package:bloc/bloc.dart';
import 'package:bpbd/data/model/authentication/authentication_model.dart';
import 'package:bpbd/data/model/me/me_model.dart';
import 'package:bpbd/data/model/responseError/response_error.dart';
import 'package:bpbd/request/authentication/authentication_request.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'authentication_event.dart';

part 'authentication_state.dart';

part 'authentication_bloc.freezed.dart';

@injectable
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthenticationRequest _authenticationRequest;

  AuthenticationBloc(this._authenticationRequest)
      : super(AuthenticationState.initial()) {
    on<AuthenticationEvent>((event, emit) async {
      await event.map(
        register: (e) async {
          emit(AuthenticationState.initial().copyWith(isLoading: true));
          final failureOrSuccess =
              await _authenticationRequest.register(e.context, e.meModel);

          failureOrSuccess.match(
            (l) => null,
            (r) => emit(
              state.copyWith(meModel: r.meModel),
            ),
          );

          emit(
            state.copyWith(
              isLoading: false,
              optionFailureOrSuccess: optionOf(failureOrSuccess),
            ),
          );
        },
        login: (e) async {
          emit(AuthenticationState.initial().copyWith(isLoading: true));
          final failureOrSuccess =
              await _authenticationRequest.login(e.context, e.meModel);

          failureOrSuccess.match(
            (l) => null,
            (r) => emit(
              state.copyWith(meModel: r.meModel),
            ),
          );

          emit(
            state.copyWith(
              isLoading: false,
              optionFailureOrSuccess: optionOf(failureOrSuccess),
            ),
          );
        },
        logout: (e) async {
          emit(AuthenticationState.initial().copyWith(isLoading: true));
          final failureOrSuccess =
              await _authenticationRequest.logout(e.context);
          emit(
            state.copyWith(
              optionFailureOrSuccess: optionOf(failureOrSuccess),
              isLoading: false,
            ),
          );
        },
        initialize: (e) {
          emit(state.copyWith(meModel: e.meModel, token: e.token));
        },
      );
    });
  }
}
