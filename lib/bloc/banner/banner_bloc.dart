import 'package:bloc/bloc.dart';
import 'package:bpbd/data/model/banner/banner_model.dart';
import 'package:bpbd/data/model/responseError/response_error.dart';
import 'package:bpbd/request/banner/banner_request.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'banner_bloc.freezed.dart';

part 'banner_event.dart';

part 'banner_state.dart';

@injectable
class BannerBloc extends Bloc<BannerEvent, BannerState> {
  final BannerRequest _bannerRequset;

  BannerBloc(this._bannerRequset) : super(const BannerState.initial()) {
    on<BannerEvent>((event, emit) async {
      await event.map(
        watchAll: (e) async {
          emit(const BannerState.loading());
          final failureOrSuccess = await _bannerRequset.getList(e.context);
          failureOrSuccess.match(
            (l) => l.map(
              noInternet: (value) => emit(
                const BannerState.error("No Internet Connection"),
              ),
              empty: (value) => emit(const BannerState.empty()),
              serverError: (value) => emit(
                BannerState.error(value.message ?? "Something went wrong"),
              ),
            ),
            (r) => emit(
              BannerState.loaded(
                bannerList: r,
                optionFailureOrSuccess: optionOf(failureOrSuccess),
              ),
            ),
          );
        },
      );
    });
  }
}
