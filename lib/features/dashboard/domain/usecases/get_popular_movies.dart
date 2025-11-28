import 'package:brain_forge_movies/core/error/failures.dart';
import 'package:brain_forge_movies/core/network/models/movie.dart';
import 'package:brain_forge_movies/features/dashboard/domain/repositories/dashboard_repository.dart';
import 'package:dartz/dartz.dart';

class GetPopularMovies {
  final DashboardRepository repository;

  GetPopularMovies(this.repository);

  Future<Either<Failure, List<Movie>>> call() async {
    return await repository.getPopularMovies();
  }
}