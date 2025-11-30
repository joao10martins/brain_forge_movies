import 'package:brain_forge_movies/features/dashboard/data/models/movie_model.dart';
import 'package:equatable/equatable.dart';


class Movie extends Equatable {
  final int id;
  final String title;
  final double rating;
  final String description;
  final String releaseDate;
  final List<int> genres;
  final String backdropPath;
  final String posterPath;

  Movie({
    required this.id,
    required this.title,
    required this.rating,
    required this.description,
    required this.releaseDate,
    required this.genres,
    required this.backdropPath,
    required this.posterPath,
  });

  @override
  List<Object?> get props => [
    id,
    title,
    rating,
    description,
    releaseDate,
    genres,
    backdropPath,
    posterPath,
  ];
}