import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_flutter_amigos/app/data/entities/app_error.dart';
import 'package:movie_flutter_amigos/app/data/models/movie_model.dart';
import 'package:movie_flutter_amigos/app/data/repository/movie_repository.dart';
import 'package:movie_flutter_amigos/app/home/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final MovieRepository _movieRepository;

  HomeCubit(this._movieRepository) : super(HomeInitialState());

  Future<void> fetchMovies() async {
    emit(HomeLoadingState());

    final eitherResponse = await _movieRepository.getTredingMovies();

    eitherResponse.fold(
      (appError) => _onFailure(appError),
      (movies) => _onSuccess(movies),
    );
  }

  void _onSuccess(List<MovieModel> movies) {
    emit(HomeSuccessState(movies: movies));
  }

  void _onFailure(AppError error) {
    emit(HomeFailureState(error: error));
  }
}
