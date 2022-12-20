part of 'banner_bloc.dart';

@freezed
class BannerState with _$BannerState{

  const factory BannerState.initial()= _Initial;
  const factory BannerState.loading()= _Loading;
  const factory BannerState.empty()= _Empty;
  const factory BannerState.error(String error)= _Error;
  const factory BannerState.loaded({
    required IList<BannerModel> bannerList,
    required Option<Either<ResponseError,IList<BannerModel>>> optionFailureOrSuccess
  })=_BannerState;


}