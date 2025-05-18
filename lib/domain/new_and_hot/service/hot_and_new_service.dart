import 'package:dartz/dartz.dart';
import 'package:netflixx/domain/failures/main_failures.dart';
import 'package:netflixx/domain/new_and_hot/model/new_and_hot.dart';

abstract class HotAndNewService {
  Future<Either<MainFailure, HotAndNewResp>> getHotAndNewMovieData();
  Future<Either<MainFailure, HotAndNewResp>> getHotAndNewTvData();
}
