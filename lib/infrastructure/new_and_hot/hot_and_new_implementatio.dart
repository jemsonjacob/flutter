import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixx/domain/api_endpoints.dart';
import 'package:netflixx/domain/failures/main_failures.dart';
import 'package:netflixx/domain/new_and_hot/model/new_and_hot.dart';
import 'package:netflixx/domain/new_and_hot/service/hot_and_new_service.dart';

@LazySingleton(as: HotAndNewService)
class HotAndNewImplementation implements HotAndNewService {
  @override
  Future<Either<MainFailure, HotAndNewResp>> getHotAndNewMovieData() async {
    //  getHotAndNewMovieData
    try {
      final Response response = await Dio(
        BaseOptions(),
      ).get(ApiEndpoints.hotAndNewMovie);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HotAndNewResp.fromJson(response.data);

        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } on DioException catch (e) {
      print(e);
      return const Left(MainFailure.clientFailure());
    } catch (e) {
      // print(e);
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, HotAndNewResp>> getHotAndNewTvData() async {
    try {
      final Response response = await Dio(
        BaseOptions(),
      ).get(ApiEndpoints.howtAndNewTv);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HotAndNewResp.fromJson(response.data);

        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } on DioException catch (e) {
      print(e);
      return const Left(MainFailure.clientFailure());
    } catch (e) {
      // print(e);
      return const Left(MainFailure.clientFailure());
    }
  }
}
