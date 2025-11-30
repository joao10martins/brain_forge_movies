import 'package:brain_forge_movies/core/error/failures.dart';
import 'package:brain_forge_movies/features/dashboard/domain/entities/movie.dart';
import 'package:dartz/dartz.dart';

abstract class DashboardRepository {
  Future<Either<Failure, List<Movie>>> getPopularMovies();
  Future<Either<Failure, List<Movie>>> getMovie(String movieName);
  //Future<Either<Failure, MovieDetails>> getMovieDetails(int movieId);
}