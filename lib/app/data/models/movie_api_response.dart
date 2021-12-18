import 'package:movie_flutter_amigos/app/data/models/movie_model.dart';

class MovieApiResponseModel {
  final int page;
  final int totalPages;
  final int totalResults;
  final List<MovieModel> movies;

  MovieApiResponseModel({
    required this.page,
    required this.movies,
    required this.totalPages,
    required this.totalResults,
  });

  MovieApiResponseModel.fromJson(Map<String, dynamic> json)
      : page = json['page'],
        movies = (json['results'] as List<dynamic>)
          .map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
          .toList(),
        totalPages = json['total_pages'],
        totalResults = json['total_results'];

  Map<String, dynamic> toJson() => {
        'page': page,
        'results': movies,
        'total_pages': totalPages,
        'total_results': totalResults,
      };

  //datasources

  //repository

  //entities
  //modular -> sasi  -> get_it provider -> Mão
  //bloc/cubit

}
