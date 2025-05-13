import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixx/domain/downloads/i_downloads_repo.dart';
import 'package:netflixx/domain/downloads/models/downloads.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

final videoUrls = [
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4",
];

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  FastLaughBloc(IDownloadsRepo _downloadService)
    : super(FastLaughState.initial()) {
    on<Initialize>((event, emit) async {
      //for sending loading to ui
      emit(FastLaughState(videoList: [], isLoading: true, isError: false));
      // get trending
      final result = await _downloadService.getDownloadImages();
      final _state = result.fold(
        (l) {
          return FastLaughState(
            videoList: [],
            isLoading: false,
            isError: false,
          );
        },
        (response) {
          return FastLaughState(
            videoList: response,
            isLoading: false,
            isError: false,
          );
        },
      );
      //send to ui
      emit(_state);
    });
  }
}
