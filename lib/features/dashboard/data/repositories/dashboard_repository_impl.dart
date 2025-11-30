import 'package:brain_forge_movies/features/dashboard/data/models/movie_model.dart';
import 'package:brain_forge_movies/features/dashboard/domain/entities/paginated_movies.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/movie.dart';
import '../../domain/repositories/dashboard_repository.dart';
import '../datasources/dashboard_remote_datasource.dart';


class DashboardRepositoryImpl implements DashboardRepository {
  final DashboardRemoteDataSource dashboardRemoteDataSource;

  DashboardRepositoryImpl(this.dashboardRemoteDataSource);

  @override
  Future<Either<Failure, PaginatedMovies>> getPopularMovies(int page) async {
    try {
      final response = await dashboardRemoteDataSource.getPopularMovies(page);
      final movies = response.map((m) => m.toEntity()).toList();

      final paginatedMovies = PaginatedMovies(movies: movies, page: page, totalPages: 10); // TODO: REMOVE HARD CODED VALUE

      return Right(paginatedMovies);
    } on Failure catch (f) {
      return Left(f);
    } catch (e) {
      // wrap unexpected exceptions
      return Left(ClientFailure(e));
    }
  }

  @override
  Future<Either<Failure, PaginatedMovies>> getMoviesByName(int page, String movieName) async {
    try {
      final response = await dashboardRemoteDataSource.getMoviesByName(page, movieName);
      final movies = response.map((m) => m.toEntity()).toList();

      final paginatedMovies = PaginatedMovies(movies: movies, page: page, totalPages: 10); // TODO: REMOVE HARD CODED VALUE

      return Right(paginatedMovies);
    } on Failure catch (f) {
      return Left(f);
    } catch (e) {
      // wrap unexpected exceptions
      return Left(ClientFailure(e));
    }
  }
}