part of 'hot_new_bloc.dart';

@freezed
class HotNewState with _$HotNewState {
  const factory HotNewState({
    required List<HotAndNewData> commingSoonlist,
    required List<HotAndNewData> everyoneWatchinglist,
    required bool isLoading,
    required bool isError,
  }) = _Initial;

  factory HotNewState.initial() => const HotNewState(
    commingSoonlist: [],
    everyoneWatchinglist: [],
    isLoading: false,
    isError: false,
  );

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
