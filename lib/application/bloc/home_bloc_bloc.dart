import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixx/domain/failures/main_failures.dart';
import 'package:netflixx/domain/new_and_hot/model/new_and_hot.dart';
import 'package:netflixx/domain/new_and_hot/service/hot_and_new_service.dart';

part 'home_bloc_event.dart';
part 'home_bloc_state.dart';
part 'home_bloc_bloc.freezed.dart';

@injectable
class HomeBlocBloc extends Bloc<HomeBlocEvent, HomeBlocState> {
  final HotAndNewService _homeService;
  HomeBlocBloc(this._homeService) : super(HomeBlocState.initial()) {
    on<HomeBlocEvent>((event, emit) async {
      // get data
      print('calling home');
      final movieResult = await _homeService.getHotAndNewMovieData();
      final tvResult = await _homeService.getHotAndNewTvData();

      //transform data
      final state1 = movieResult.fold(
        (MainFailure f) {
          return HomeBlocState(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            pastMoviesList: [],
            trendingMoviesList: [],
            topTvList: [],
            horrorMoviesList: [],
            dramaMoviesList: [],
            isLoading: false,
            isError: true,
          );
        },
        (HotAndNewResp resp) {
          final pastMovies = resp.results;
          final trendMovies = resp.results;
          final topTvMovies = resp.results;
          final horrorMovies = resp.results;
          final dramaMovies = resp.results;
          pastMovies.shuffle;
          trendMovies.shuffle;
          topTvMovies.shuffle;
          horrorMovies.shuffle;
          dramaMovies.shuffle;
          return HomeBlocState(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            pastMoviesList: pastMovies,
            trendingMoviesList: trendMovies,
            topTvList: state.topTvList,
            horrorMoviesList: horrorMovies,
            dramaMoviesList: dramaMovies,
            isLoading: false,
            isError: false,
          );
        },
      );
      //send to ui
      emit(state1);

      //tv
      final state2 = tvResult.fold(
        (MainFailure f) {
          return HomeBlocState(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            pastMoviesList: [],
            trendingMoviesList: [],
            topTvList: [],
            horrorMoviesList: [],
            dramaMoviesList: [],
            isLoading: false,
            isError: false,
          );
        },
        (HotAndNewResp resp) {
          final top10tvlist = resp.results;

          return HomeBlocState(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            pastMoviesList: state.pastMoviesList,
            trendingMoviesList: top10tvlist,
            topTvList: top10tvlist,
            horrorMoviesList: state.horrorMoviesList,
            dramaMoviesList: state.dramaMoviesList,
            isLoading: false,
            isError: false,
          );
        },
      );

      //ssend to ui
      emit(state2);
    });
  }
}
