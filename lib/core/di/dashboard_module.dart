import 'package:brain_forge_movies/features/dashboard/domain/usecases/get_movies_by_name.dart';
import 'package:injectable/injectable.dart';
import '../../features/dashboard/data/datasources/dashboard_remote_datasource.dart';
import '../../features/dashboard/data/repositories/dashboard_repository_impl.dart';
import '../../features/dashboard/domain/repositories/dashboard_repository.dart';
import '../../features/dashboard/domain/usecases/get_popular_movies.dart';
import '../network/api/api_client.dart';

@module
abstract class DashboardModule {
  @lazySingleton
  DashboardRemoteDataSource remoteDataSource(ApiClient apiClient) =>
      DashboardRemoteDataSourceImpl(apiClient);

  @lazySingleton
  DashboardRepository dashboardRepository(DashboardRemoteDataSource remote) =>
      DashboardRepositoryImpl(remote);

  @lazySingleton
  GetPopularMovies getPopularMovies(DashboardRepository repo) =>
      GetPopularMovies(repo);

  @lazySingleton
  GetMoviesByName getMoviesByName(DashboardRepository repo) =>
      GetMoviesByName(repo);
}
