import 'package:bloc/bloc.dart';
import 'package:bpbd/data/model/permintaan/permintaan.dart';
import 'package:bpbd/data/model/responseError/response_error.dart';
import 'package:bpbd/request/permintaan/permintaan_request.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'permintaan_bloc.freezed.dart';

part 'permintaan_event.dart';

part 'permintaan_state.dart';

@injectable
class PermintaanBloc extends Bloc<PermintaanEvent, PermintaanState> {
  final PermintaanRequestBase permintaanRequestBase;

  PermintaanBloc(this.permintaanRequestBase)
      : super(PermintaanState.initial()) {
    on<PermintaanEvent>((event, emit) async {
      await event.map(
        watchAll: (e) async {
          emit(state.copyWith(loadingFetch: true));
          final failureOrSuccess =
              await permintaanRequestBase.getList(e.context, e.idKota);

          IList<Permintaan>? permintaan = failureOrSuccess.match((l) => null, (r) => r);
          emit(
            state.copyWith(
                loadingFetch: false,
                listPermintaan: permintaan ?? <Permintaan>[].lock,
                optionGet: optionOf(failureOrSuccess)),
          );
        },
        submit: (e) async {
          emit(state.copyWith(loadingSubmit: true));
          var permintaan = state.listPermintaan;

          final failureOrSuccess = await permintaanRequestBase.submitPermintaan(
              e.context, e.permintaan,e.idUser);

          failureOrSuccess.match(
              (l) => null, (r) => permintaan.add(e.permintaan));
          emit(
            state.copyWith(
                listPermintaan: permintaan,
                loadingSubmit: false,
                optionSubmit: optionOf(failureOrSuccess)),
          );
        },
      );
    });
  }
}
