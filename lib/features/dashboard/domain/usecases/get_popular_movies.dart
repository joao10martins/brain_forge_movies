import 'package:brain_forge_movies/core/error/failures.dart';
import 'package:brain_forge_movies/core/usecases/usecase.dart';
import 'package:brain_forge_movies/features/dashboard/domain/entities/paginated_movies.dart';
import 'package:brain_forge_movies/features/dashboard/domain/repositories/dashboard_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetPopularMovies implements UseCase<PaginatedMovies, Params> {
  final DashboardRepository repository;

  GetPopularMovies(this.repository);

  @override
  Future<Either<Failure, PaginatedMovies>> call(params) async => await repository.getPopularMovies(params.page);
}

class Params extends Equatable {
  final int page;

  const Params({required this.page});

  @override
  List<Object?> get props => [page];
}