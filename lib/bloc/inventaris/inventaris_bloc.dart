import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bpbd/data/model/inventaris/inventaris_model.dart';
import 'package:bpbd/data/model/me/me_model.dart';
import 'package:bpbd/request/inventaris/inventaris_request.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../data/model/responseError/response_error.dart';

part 'inventaris_event.dart';

part 'inventaris_state.dart';

part 'inventaris_bloc.freezed.dart';

@injectable
class InventarisBloc extends Bloc<InventarisEvent, InventarisState> {
  final InventarisRequest inventarisRequest;

  InventarisBloc(this.inventarisRequest) : super(const InventarisState.initial()) {
    on<InventarisEvent>((event, emit) async {
      await event.map(watchAll: (e) async {
        emit(const InventarisState.loading());
        final failureOrSuccess =
            await inventarisRequest.getList(e.context, e.idKota);
        failureOrSuccess.match(
          (l) => l.map(
            noInternet: (value) => emit(
              const InventarisState.error("No Internet Connection"),
            ),
            empty: (value) => emit(const InventarisState.empty()),
            serverError: (value) => emit(
              InventarisState.error(value.message ?? "Something went wrong"),
            ),
          ),
          (r) => emit(
            InventarisState.loaded(
              invetarisList: r,
              optionFailureOrDiseases: optionOf(failureOrSuccess),
            ),
          ),
        );
      });
    });
  }
}
