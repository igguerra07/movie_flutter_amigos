import 'package:equatable/equatable.dart';
import 'package:movie_flutter_amigos/app/data/entities/app_error.dart';
import 'package:movie_flutter_amigos/app/data/entities/movie_entity.dart';
import 'package:movie_flutter_amigos/app/data/models/movie_model.dart';

abstract class HomeState extends Equatable {}

class HomeInitialState extends HomeState {
  @override
  List<Object?> get props => [];
}

class HomeLoadingState extends HomeState {
  @override
  List<Object?> get props => [];
}

class HomeSuccessState extends HomeState {
  final List<MovieEntity> movies; //entity

  HomeSuccessState({required this.movies});

  @override
  List<Object?> get props => [movies];
}

class HomeFailureState extends HomeState {
  final AppError error;

  HomeFailureState({required this.error});

  @override
  List<Object?> get props => [error];
}
