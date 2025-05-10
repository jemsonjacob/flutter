part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isLoading,
    required List<Downloads> downloads,

    required Option<Either<MainFailure, List<Downloads>>>
    downloadsFailureorSuccessoption,
  }) = _DownloadsState;

  factory DownloadsState.inital() {
    return const DownloadsState(
      isLoading: false,
      downloadsFailureorSuccessoption: None(),
      downloads: [],
    );
  }

  @override
  // TODO: implement downloads
  List<Downloads> get downloads => throw UnimplementedError();

  @override
  // TODO: implement downloadsFailureorSuccessoption
  Option<Either<MainFailure, List<Downloads>>>
  get downloadsFailureorSuccessoption => throw UnimplementedError();

  @override
  // TODO: implement isLoading
  bool get isLoading => throw UnimplementedError();
}
