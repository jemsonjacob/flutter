import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixx/domain/downloads/i_downloads_repo.dart';
import 'package:netflixx/domain/downloads/models/downloads.dart';
import 'package:netflixx/domain/failures/main_failures.dart';
import 'package:netflixx/domain/search/models/search_response/search_response.dart';
import 'package:netflixx/domain/search/search_service.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadsRepo _downloadService;
  final SearchService _searchService;
  SearchBloc(this._downloadService, this._searchService)
    : super(SearchState.initial()) {
    //ideal state
    on<Initialize>((event, emit) async {
      //initail state
      if (state.idleList.isNotEmpty) {
        emit(
          SearchState(
            searchResultList: [],
            idleList: state.idleList,
            isLoading: false,
            isError: false,
          ),
        );
        return;
      }
      emit(
        const SearchState(
          searchResultList: [],
          idleList: [],
          isLoading: true,
          isError: false,
        ),
      );
      // get trending
      //emit when data comes
      final result = await _downloadService.getDownloadImages();
      final istate = result.fold(
        (MainFailure f) {
          return const SearchState(
            searchResultList: [],
            idleList: [],
            isLoading: false,
            isError: true,
          );
        },
        //when result or dta come
        (List<Downloads> list) {
          return SearchState(
            searchResultList: [],
            idleList: list,
            isLoading: false,
            isError: false,
          );
        },
      );

      //show it in ui
      emit(istate);
    });

    //search state
    on<SearchMovie>((event, emit) {
      // TODO: implement event handler
    });
  }
}
