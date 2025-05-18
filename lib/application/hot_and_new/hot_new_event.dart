part of 'hot_new_bloc.dart';

@freezed
class HotNewEvent with _$HotNewEvent {
  const factory HotNewEvent.loadDataInComingSoon() = loadDataInComingSoon;
  const factory HotNewEvent.loadDataInEveryoneWatching() =
      loadDataInEveryoneWatching;
}
