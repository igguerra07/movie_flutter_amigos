class MovieModel {
  final bool adult;
  final String backdropPath;
 // final List<int> genreIds;
  final int id;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final String posterPath;
  final String releaseDate;
  final String title;
  final bool video;
  final double voteAverage;
  final int voteCount;
  final double popularity;

  MovieModel({
    required this.adult,
    this.backdropPath = "",
    //required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    this.posterPath = "",
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
    required this.popularity,
  });

  MovieModel.fromJson(Map<String, dynamic> data) :  
      adult = data['adult'] ,
      backdropPath = data['backdrop_path'],
     //genreIds = data['genre_ids'] as List<int>,
      id = data['id'] as int,
      originalLanguage = data['original_language'],
      originalTitle = data['original_title'],
      overview = data['overview'],
      posterPath = data['poster_path'],
      releaseDate = data['release_date'],
      title = data['title'],
      video = data['video'] ,
      voteAverage = data['vote_average'],
      voteCount = data['vote_count'] ,
      popularity = data['popularity'];
      

  Map<String, dynamic> toJson() => {
    'adult': adult,
    'backdrop_path': backdropPath,
    //'genre_ids': genreIds,
    'id': id,
    'original_language': originalLanguage,
    'original_title': originalTitle,
    'overview': overview,
    'poster_path': posterPath,
    'release_date': releaseDate,
    'title': title,
    'video': video,
    'vote_average': voteAverage,
    'vote_count': voteCount,
    'popularity': popularity,
  };
}
