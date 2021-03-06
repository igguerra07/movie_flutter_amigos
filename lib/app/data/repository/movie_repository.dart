import 'package:dartz/dartz.dart';
import 'package:movie_flutter_amigos/app/data/entities/app_error.dart';
import 'package:movie_flutter_amigos/app/data/models/movie_model.dart';

abstract class MovieRepository {
  Future<Either<AppError, List<MovieModel>>> getTredingMovies();
}
