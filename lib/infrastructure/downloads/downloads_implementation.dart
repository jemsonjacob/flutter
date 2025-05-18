import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixx/domain/api_endpoints.dart';
import 'package:netflixx/domain/downloads/i_downloads_repo.dart';
import 'package:netflixx/domain/downloads/models/downloads.dart';
import 'package:netflixx/domain/failures/main_failures.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: IDownloadsRepo)
class DownloadsRepository implements IDownloadsRepo {
  @override
  Future<Either<MainFailure, List<Downloads>>> getDownloadImages() async {
    //  implement getDownloadImages
    try {
      final Response response = await Dio(
        BaseOptions(),
      ).get(ApiEndpoints.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadList =
            (response.data['results'] as List).map((e) {
              return Downloads.fromJson(e);
            }).toList();
        //print(downloadList);
        return Right(downloadList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      // print(e);
      return const Left(MainFailure.clientFailure());
    }
  }
}
