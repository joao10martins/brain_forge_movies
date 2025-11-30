import 'package:brain_forge_movies/core/error/failures.dart';
import 'package:brain_forge_movies/core/usecases/usecase.dart';
import 'package:brain_forge_movies/features/dashboard/domain/entities/movie.dart';
import 'package:brain_forge_movies/features/dashboard/domain/entities/paginated_movies.dart';
import 'package:brain_forge_movies/features/dashboard/domain/repositories/dashboard_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetMoviesByName implements UseCase<PaginatedMovies, Params> {
  final DashboardRepository repository;

  GetMoviesByName(this.repository);

  @override
  Future<Either<Failure, PaginatedMovies>> call(Params params) async => await repository.getMoviesByName(params.page, params.movieName);
}

class Params extends Equatable {
  final int page;
  final String movieName;

  const Params({required this.page, required this.movieName});

  @override
  List<Object?> get props => [page, movieName];
}