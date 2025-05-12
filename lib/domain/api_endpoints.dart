import 'package:netflixx/core/constant.dart';
import 'package:netflixx/infrastructure/apikey.dart';

class ApiEndpoints {
  static const downloads = "$baseUrl/trending/all/day?api_key=$apiKey";
  static const search = "$baseUrl/search/movie?api_key=$apiKey";
}
