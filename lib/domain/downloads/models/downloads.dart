import 'package:freezed_annotation/freezed_annotation.dart';

part 'downloads.freezed.dart';
part 'downloads.g.dart';

@freezed
class Downloads with _$Downloads {
  const Downloads._(); // Add this private constructor

  const factory Downloads({
    //for image
    // ignore: invalid_annotation_target
    @JsonKey(name: 'poster_path') required String? posterPath,
    //for movie name
    @JsonKey(name: 'title') required String? title,
  }) = _Downloads;

  factory Downloads.fromJson(Map<String, dynamic> json) =>
      _$DownloadsFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
