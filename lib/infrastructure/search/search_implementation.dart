import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixx/domain/api_endpoints.dart';
import 'package:netflixx/domain/failures/main_failures.dart';
import 'package:netflixx/domain/search/models/search_response/search_response.dart';
import 'package:netflixx/domain/search/search_service.dart';

@LazySingleton(as: SearchService)
class SearchImplementation implements SearchService {
  @override
  Future<Either<MainFailure, SearchResponse>> searchMovies({
    required String movieQuery,
  }) async {
    //  implement searchMovies
    try {
      final Response response = await Dio(
        BaseOptions(),
      ).get(ApiEndpoints.search, queryParameters: {'query': movieQuery});
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SearchResponse.fromJson(response.data);

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
