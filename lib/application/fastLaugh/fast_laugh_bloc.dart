// ignore_for_file: invalid_use_of_protected_member, no_leading_underscores_for_local_identifiers

// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixx/domain/downloads/i_downloads_repo.dart';
import 'package:netflixx/domain/downloads/models/downloads.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

final videoUrls = [
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4",
];

ValueNotifier<Set<int>> likedVideoIdsNotifier = ValueNotifier({});

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  // ignore: no_leading_underscores_for_local_identifiers
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

    //what hapen when like/unlike happens
    on<LikeVideo>((event, emit) async {
      likedVideoIdsNotifier.value.add(event.id);
      likedVideoIdsNotifier.notifyListeners();
    });
    on<UnLikeVideo>((event, emit) async {
      likedVideoIdsNotifier.value.remove(event.id);
      likedVideoIdsNotifier.notifyListeners();
    });
  }
}
