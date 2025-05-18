import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixx/domain/failures/main_failures.dart';
import 'package:netflixx/domain/new_and_hot/model/new_and_hot.dart';
import 'package:netflixx/domain/new_and_hot/service/hot_and_new_service.dart';

part 'hot_new_event.dart';
part 'hot_new_state.dart';
part 'hot_new_bloc.freezed.dart';

@injectable
class HotNewBloc extends Bloc<HotNewEvent, HotNewState> {
  final HotAndNewService _hotAndNewService;
  HotNewBloc(this._hotAndNewService) : super(HotNewState.initial()) {
    on<loadDataInComingSoon>((event, emit) async {
      // send loading to ui
      emit(
        HotNewState(
          commingSoonlist: [],
          everyoneWatchinglist: [],
          isLoading: true,
          isError: false,
        ),
      );
      //get data from remote
      final result = await _hotAndNewService.getHotAndNewMovieData();
      //data to state
      //what happens on fail
      final newstate = result.fold(
        (MainFailure failue) {
          return HotNewState(
            commingSoonlist: [],
            everyoneWatchinglist: [],
            isLoading: false,
            isError: true,
          );
        },

        //what happens on suuccesss - response from hotand new
        (HotAndNewResp resp) {
          return HotNewState(
            commingSoonlist: resp.results,
            everyoneWatchinglist: state.everyoneWatchinglist,
            isLoading: false,
            isError: false,
          );
        },
      );
      emit(newstate);
    });

    on<loadDataInEveryoneWatching>((event, emit) async {
      // send loading to ui
      emit(
        HotNewState(
          commingSoonlist: [],
          everyoneWatchinglist: [],
          isLoading: true,
          isError: false,
        ),
      );
      //get data from remote
      final result = await _hotAndNewService.getHotAndNewTvData();
      //data to state
      //what happens on fail
      final newstate = result.fold(
        (MainFailure failue) {
          return HotNewState(
            commingSoonlist: [],
            everyoneWatchinglist: [],
            isLoading: false,
            isError: true,
          );
        },

        //what happens on suuccesss - response from hotand new
        (HotAndNewResp resp) {
          return HotNewState(
            commingSoonlist: state.commingSoonlist,
            everyoneWatchinglist: resp.results,
            isLoading: false,
            isError: false,
          );
        },
      );
      emit(newstate);
    });
  }
}
