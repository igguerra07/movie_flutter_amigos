import 'package:movie_flutter_amigos/app/data/models/movie_api_response.dart';

abstract class ApiService {
  Future<MovieApiResponseModel> getTrending();
}
