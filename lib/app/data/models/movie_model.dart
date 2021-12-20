import 'package:movie_flutter_amigos/app/data/entities/movie_entity.dart';

class MovieModel extends MovieEntity {
  final int id;
  final bool adult;
  final bool video;
  final String title;
  final int voteCount;
  final String overview;
  final String posterPath;
  final double popularity;
  final double voteAverage;
  final String releaseDate;
  final String backdropPath;
  final String originalTitle;
  final String originalLanguage;

  MovieModel({
    required this.id,
    required this.title,
    required this.video,
    required this.adult,
    required this.overview,
    required this.voteCount,
    required this.popularity,
    required this.voteAverage,
    required this.releaseDate,
    required this.originalTitle,
    required this.originalLanguage,
    this.posterPath = "",
    this.backdropPath = "",
  }): super(
    id: id,
    rate: voteAverage,
    overview: overview,
    title: originalTitle,
    posterPath: posterPath,
  );

  factory MovieModel.fromJson(Map<String, dynamic> data) => MovieModel(
    id : data['id'],
    video : data['video'],
    adult : data['adult'],
    title : data['title'],
    overview : data['overview'],
    voteCount : data['vote_count'] ,
    popularity : data['popularity'],
    posterPath : data['poster_path'],
    releaseDate : data['release_date'],
    voteAverage : data['vote_average'],
    backdropPath : data['backdrop_path'],
    originalTitle : data['original_title'],
    originalLanguage : data['original_language'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'adult': adult,
    'title': title,
    'video': video,
    'overview': overview,
    'vote_count': voteCount,
    'popularity': popularity,
    'poster_path': posterPath,
    'vote_average': voteAverage,
    'release_date': releaseDate,
    'backdrop_path': backdropPath,
    'original_title': originalTitle,
    'original_language': originalLanguage,
  };
}