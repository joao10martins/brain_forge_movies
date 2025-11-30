import 'package:brain_forge_movies/core/error/failures.dart';
import 'package:brain_forge_movies/core/usecases/usecase.dart';
import 'package:dartz/dartz.dart';

import '../entities/movie_details.dart';
import '../repositories/movie_details_repository.dart';

class GetMovieDetails implements UseCase<MovieDetails, int> {
  final MovieDetailsRepository repository;

  GetMovieDetails(this.repository);

  @override
  Future<Either<Failure, MovieDetails>> call(int movieId) =>
      repository.getMovieDetails(movieId);
}