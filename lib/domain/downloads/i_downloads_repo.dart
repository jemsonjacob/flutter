import 'package:dartz/dartz.dart';
import 'package:netflixx/domain/downloads/models/downloads.dart';
import 'package:netflixx/domain/failures/main_failures.dart';

abstract class IDownloadsRepo {
  Future<Either<MainFailure, List<Downloads>>> getDownloadImages();
}
