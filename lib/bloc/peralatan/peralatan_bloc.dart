import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bpbd/data/model/peralatan/peralatan.dart';
import 'package:bpbd/data/model/responseError/response_error.dart';
import 'package:bpbd/request/peralatan/peralatan_request.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'peralatan_event.dart';

part 'peralatan_state.dart';

part 'peralatan_bloc.freezed.dart';

@injectable
class PeralatanBloc extends Bloc<PeralatanEvent, PeralatanState> {
  final PeralatanRequest peralatanRequest;

  PeralatanBloc(this.peralatanRequest) : super(const PeralatanState.initial()) {
    on<PeralatanEvent>((event, emit) async {
      await event.map(watchAll: (e) async {
        emit(const PeralatanState.loading());
        final failureOrSuccess =
            await peralatanRequest.getList(e.context, e.idKota);
        failureOrSuccess.match(
          (l) => l.map(
            noInternet: (value) => emit(
              const PeralatanState.error("No Internet Connection"),
            ),
            empty: (value) => emit(const PeralatanState.empty()),
            serverError: (value) => emit(
              PeralatanState.error(value.message ?? "Something went wrong"),
            ),
          ),
          (r) => emit(
            PeralatanState.loaded(
              invetarisList: r,
              optionFailureOrSucces: optionOf(failureOrSuccess),
            ),
          ),
        );
      });
    });
  }
}
