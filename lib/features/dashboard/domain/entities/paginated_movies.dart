import 'package:brain_forge_movies/features/dashboard/domain/entities/movie.dart';

class PaginatedMovies {
  final List<Movie> movies;
  final int page;
  final int totalPages;

  PaginatedMovies({
    required this.movies,
    required this.page,
    required this.totalPages,
  });
}