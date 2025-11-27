import 'package:brain_forge_movies/core/network/models/movie.dart';

abstract class DashboardRepository {
  getPopularMovies();
  getMovie(String movieName);
  getMovieDetails(Movie movie);
}