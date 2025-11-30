import 'package:brain_forge_movies/core/error/failures.dart';
import 'package:brain_forge_movies/features/movie_details/data/models/movie_details_model.dart';
import 'package:dartz/dartz.dart';

import '../../domain/entities/movie_details.dart';
import '../../domain/repositories/movie_details_repository.dart';
import '../datasources/movie_details_remote_datasource.dart';

class MovieDetailsRepositoryImpl implements MovieDetailsRepository {
  final MovieDetailsRemoteDataSource remote;

  MovieDetailsRepositoryImpl(this.remote);

  @override
  Future<Either<Failure, MovieDetails>> getMovieDetails(int movieId) async {
    try {
      final result = await remote.getMovieDetails(movieId);
      return Right(result.toEntity());
    } catch (e) {
      if (e is Failure) return Left(e);
      return Left(ClientFailure(e));
    }
  }
}
