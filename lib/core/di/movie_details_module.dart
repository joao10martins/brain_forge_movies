import 'package:brain_forge_movies/features/movie_details/domain/usecases/get_movie_details.dart';
import 'package:injectable/injectable.dart';

import '../../features/movie_details/data/datasources/movie_details_remote_datasource.dart';
import '../../features/movie_details/data/repositories/movie_details_repository_impl.dart';
import '../../features/movie_details/domain/repositories/movie_details_repository.dart';
import '../network/api/api_client.dart';

@module
abstract class MovieDetailsModule {
  @lazySingleton
  MovieDetailsRemoteDataSource remoteDataSource(ApiClient apiClient) =>
      MovieDetailsRemoteDataSourceImpl(apiClient);

  @lazySingleton
  MovieDetailsRepository movieDetailsRepository(MovieDetailsRemoteDataSource remote) =>
      MovieDetailsRepositoryImpl(remote);

  @lazySingleton
  GetMovieDetails getMovieDetails(MovieDetailsRepository repo) =>
      GetMovieDetails(repo);
}
