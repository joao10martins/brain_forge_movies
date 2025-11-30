import 'package:brain_forge_movies/core/error/failures.dart';
import 'package:brain_forge_movies/features/dashboard/domain/entities/paginated_movies.dart';
import 'package:dartz/dartz.dart';

abstract class DashboardRepository {
  Future<Either<Failure, PaginatedMovies>> getPopularMovies(int page);
  Future<Either<Failure, PaginatedMovies>> getMoviesByName(int page, String movieName);
  //Future<Either<Failure, MovieDetails>> getMovieDetails(int movieId);
}