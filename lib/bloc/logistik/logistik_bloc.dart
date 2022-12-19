import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bpbd/data/model/logistik/logistik.dart';
import 'package:bpbd/data/model/responseError/response_error.dart';
import 'package:bpbd/request/logistik/logistik_request.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'logistik_event.dart';

part 'logistik_state.dart';

part 'logistik_bloc.freezed.dart';

@injectable
class LogistikBloc extends Bloc<LogistikEvent, LogistikState> {
  final LogistikRequest logistikRequest;

  LogistikBloc(this.logistikRequest) : super(const LogistikState.initial()) {
    on<LogistikEvent>((event, emit) async {
      await event.map(watchAll: (e) async {
        emit(const LogistikState.loading());
        final failureOrSuccess =
            await logistikRequest.getList(e.context, e.idKota);
        failureOrSuccess.match(
          (l) => l.map(
            noInternet: (value) => emit(
              const LogistikState.error("No Internet Connection"),
            ),
            empty: (value) => emit(const LogistikState.empty()),
            serverError: (value) => emit(
              LogistikState.error(value.message ?? "Something went wrong"),
            ),
          ),
          (r) => emit(
            LogistikState.loaded(
              invetarisList: r,
              optionFailureOrSucces: optionOf(failureOrSuccess),
            ),
          ),
        );
      });
    });
  }
}
