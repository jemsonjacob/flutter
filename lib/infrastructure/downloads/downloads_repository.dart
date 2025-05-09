import 'package:dartz/dartz.dart';
import 'package:netflixx/domain/api_endpoints.dart';
import 'package:netflixx/domain/downloads/i_downloads_repo.dart';
import 'package:netflixx/domain/downloads/models/downloads.dart';
import 'package:netflixx/domain/failures/main_failures.dart';
import 'package:dio/dio.dart';

class DownloadsRepository implements IDownloadsRepo {
  @override
  Future<Either<MainFailure, List<Downloads>>> getDownloadImages() async {
    // TODO: implement getDownloadImages
    try {
      final Response response = await Dio(
        BaseOptions(),
      ).get(ApiEndpoints.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<Downloads> downloadList = [];
        for (final row in response.data) {
          downloadList.add(Downloads.fromJson(row as Map<String, dynamic>));
          print(downloadList);
        }
        return Right(downloadList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
