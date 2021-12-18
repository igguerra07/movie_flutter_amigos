import 'package:movie_flutter_amigos/app/data/datasources/movie_remote_data.dart';
import 'package:movie_flutter_amigos/app/data/models/movie_model.dart';
import 'package:movie_flutter_amigos/app/services/api/api_service.dart';

class MovieRemoteDataSourceImpl implements MovieRemoteDataSource {
  final ApiService _apiService;

  MovieRemoteDataSourceImpl(this._apiService);

  @override
  Future<List<MovieModel>> getTrendingMovies() async {
    final response = await _apiService.getTrending();
    return response.movies;
  }
}
