import 'package:bloc/bloc.dart';
import 'package:bpbd/data/model/kota/kota_model.dart';
import 'package:bpbd/data/model/responseError/response_error.dart';
import 'package:bpbd/request/kota/kota_request.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'kota_bloc.freezed.dart';

part 'kota_event.dart';

part 'kota_state.dart';

@injectable
class KotaBloc extends Bloc<KotaEvent, KotaState> {
  final KotaRequestBase kotaRequestBase;

  KotaBloc(this.kotaRequestBase) : super(const KotaState.initial()) {
    on<KotaEvent>((event, emit) async {
      await event.map(
        watchAll: (e) async {
          emit(const KotaState.loading());
          final failureOrSuccess = await kotaRequestBase.getList(e.context);
          failureOrSuccess.match(
            (l) => l.map(
              noInternet: (value) => emit(
                const KotaState.error("No Internet Connection"),
              ),
              empty: (value) => emit(const KotaState.empty()),
              serverError: (value) => emit(
                KotaState.error(value.message ?? "Something went wrong"),
              ),
            ),
            (r) => emit(
              KotaState.loaded(
                listKota: r,
                optionFailureOrSucces: optionOf(failureOrSuccess),
              ),
            ),
          );
        },
      );
    });
  }
}
