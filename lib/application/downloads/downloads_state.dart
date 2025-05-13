part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const DownloadsState._(); // ✅ Add this private constructor

  const factory DownloadsState({
    required bool isLoading,
    required List<Downloads> downloads,
    required Option<Either<MainFailure, List<Downloads>>>
    downloadsFailureorSuccessoption,
  }) = _DownloadsState;

  factory DownloadsState.inital() {
    return const DownloadsState(
      isLoading: false,
      downloads: [],
      downloadsFailureorSuccessoption: None(),
    );
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
