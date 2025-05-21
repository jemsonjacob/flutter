part of 'home_bloc_bloc.dart';

@freezed
class HomeBlocState with _$HomeBlocState {
  const factory HomeBlocState({
    required String stateId,
    required List<HotAndNewData> pastMoviesList,
    required List<HotAndNewData> trendingMoviesList,
    required List<HotAndNewData> topTvList,
    required List<HotAndNewData> horrorMoviesList,
    required List<HotAndNewData> dramaMoviesList,
    required bool isLoading,
    required bool isError,
  }) = _Initial;

  factory HomeBlocState.initial() => HomeBlocState(
    stateId: '0',
    pastMoviesList: [],
    trendingMoviesList: [],
    topTvList: [],
    horrorMoviesList: [],
    dramaMoviesList: [],
    isLoading: false,
    isError: false,
  );

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
