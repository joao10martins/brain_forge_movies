import 'package:brain_forge_movies/core/error/failures.dart';
import 'package:brain_forge_movies/core/network/models/movie.dart';
import 'package:brain_forge_movies/core/usecases/usecase.dart';
import 'package:brain_forge_movies/features/dashboard/domain/repositories/dashboard_repository.dart';
import 'package:dartz/dartz.dart';

class GetPopularMovies implements UseCase<List<Movie>, NoParams> {
  final DashboardRepository repository;

  GetPopularMovies(this.repository);

  @override
  Future<Either<Failure, List<Movie>>> call(NoParams params) async => await repository.getPopularMovies();
}