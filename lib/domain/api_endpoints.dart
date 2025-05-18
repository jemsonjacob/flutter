import 'package:netflixx/core/constant.dart';
import 'package:netflixx/infrastructure/apikey.dart';

class ApiEndpoints {
  static const downloads = "$baseUrl/trending/all/day?api_key=$apiKey";
  static const search = "$baseUrl/search/movie?api_key=$apiKey";
  static const hotAndNewMovie = "$baseUrl/discover/movie?api_key=$apiKey";
  static const howtAndNewTv = "$baseUrl/discover/tv?api_key=$apiKey";
}
