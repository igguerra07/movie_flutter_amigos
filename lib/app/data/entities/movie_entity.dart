class MovieEntity {
  final int id;
  final double rate;
  final String title;
  final String overview;
  final String posterPath;

  bool get hasPoster => posterPath.isNotEmpty;

  MovieEntity({
    required this.id,
    required this.rate,
    required this.title,
    required this.overview,
    required this.posterPath,
  });
}
