import 'package:dartz/dartz.dart';
import 'package:netflixx/domain/failures/main_failures.dart';
import 'package:netflixx/domain/search/models/search_response/search_response.dart';

abstract class SearchService {
  Future<Either<MainFailure, SearchResponse>> searchMovies({
    required String movieQuery,
  });
}
