import 'dart:convert';

import 'package:movie_flutter_amigos/app/data/models/movie_api_response.dart';
import 'package:movie_flutter_amigos/app/services/api/api_client.dart';
import 'package:movie_flutter_amigos/app/services/api/api_constants.dart';
import 'package:movie_flutter_amigos/app/services/api/api_service.dart';

class ApiServiceImpl implements ApiService {
  final ApiClient _apiClient;

  ApiServiceImpl(this._apiClient);

  @override
  Future<MovieApiResponseModel> getTrending() async {
    final response = await _apiClient.get(path: ApiConstants.trending); //String
    final data = json.decode(response); // json = Map<String, dynamic>
    return MovieApiResponseModel.fromJson(data);
  }
}