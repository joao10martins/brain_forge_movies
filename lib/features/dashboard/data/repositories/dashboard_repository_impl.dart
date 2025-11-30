import 'package:brain_forge_movies/features/dashboard/data/models/movie_model.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/movie.dart';
import '../../domain/repositories/dashboard_repository.dart';
import '../datasources/dashboard_remote_datasource.dart';


class DashboardRepositoryImpl implements DashboardRepository {
  final DashboardRemoteDataSource dashboardRemoteDataSource;

  DashboardRepositoryImpl(this.dashboardRemoteDataSource);

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async {
    try {
      final response = await dashboardRemoteDataSource.getPopularMovies();
      final movies = response.map((m) => m.toEntity()).toList();
      return Right(movies);
    } on Failure catch (f) {
      return Left(f);
    } catch (e) {
      // wrap unexpected exceptions
      return Left(ClientFailure(e));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getMovie(String movieName) {
    // TODO: implement getMovie
    throw UnimplementedError();
  }
}