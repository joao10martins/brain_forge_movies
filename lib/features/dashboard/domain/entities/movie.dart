import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int movieId;
  final String title;
  final double rating;
  final String description;
  final String releaseDate;
  final List<int> genres;
  final String backdropImage;
  final String posterImage;

  const Movie({
    required this.movieId,
    required this.title,
    required this.rating,
    required this.description,
    required this.releaseDate,
    required this.genres,
    required this.backdropImage,
    required this.posterImage,
  });

  @override
  List<Object?> get props => [
    movieId,
    title,
    rating,
    description,
    releaseDate,
    genres,
    backdropImage,
    posterImage,
  ];
}
