import 'package:movie_flutter_amigos/app/data/datasources/movie_remote_data.dart';
import 'package:movie_flutter_amigos/app/data/models/movie_model.dart';
import 'package:movie_flutter_amigos/app/data/entities/app_error.dart';
import 'package:dartz/dartz.dart';
import 'package:movie_flutter_amigos/app/data/repository/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieRemoteDataSource _remote; //vindo da api

  MovieRepositoryImpl(this._remote);

  @override
  Future<Either<AppError, List<MovieModel>>> getTredingMovies() async {
    try {
      final response = await _remote.getTrendingMovies();
      return right(response);
    } catch (e, s) {
      return left(AppError(message: e.toString()));
    }
  }
}


