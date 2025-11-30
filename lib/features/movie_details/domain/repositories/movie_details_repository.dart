import 'package:dartz/dartz.dart';
import 'package:brain_forge_movies/core/error/failures.dart';
import '../entities/movie_details.dart';

abstract class MovieDetailsRepository {
  Future<Either<Failure, MovieDetails>> getMovieDetails(int movieId);
}