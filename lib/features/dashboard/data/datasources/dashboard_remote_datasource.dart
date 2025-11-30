import 'package:brain_forge_movies/core/error/failures.dart';
import 'package:brain_forge_movies/core/network/api/api_client.dart';
import 'package:brain_forge_movies/features/dashboard/data/models/movie_model.dart';

abstract class DashboardRemoteDataSource {
  /// Calls the https://api.themoviedb.org/3/movie/popular endpoint.
  ///
  /// Throws a [Failure] depending on the error code.
  Future<List<MovieModel>> getPopularMovies();

  /// Calls the https://api.themoviedb.org/3/movie/{movie_id} endpoint.
  ///
  /// Throws a [Failure] depending on the error code.
  Future<List<MovieModel>> getMovie(String movieName);
}

class DashboardRemoteDataSourceImpl implements DashboardRemoteDataSource {
  DashboardRemoteDataSourceImpl(this._apiClient);

  final ApiClient _apiClient;

  @override
  Future<List<MovieModel>> getPopularMovies() async {
    final response = await _apiClient.get('movie/popular',
      params: {
        'language': 'en-US',
        'page': 1,
      },
    );

    if (response is! Map || response['results'] == null) {
      throw ServerFailure(errorMessage: 'Invalid response for popular movies');
    }

    final results = (response['results'] as List).cast<dynamic>();
    return results
        .map((e) => MovieModel.fromJson(Map<String, dynamic>.from(e)))
        .toList();
  }

  @override
  Future<List<MovieModel>> getMovie(String movieName) {
    // TODO: implement getMovie
    throw UnimplementedError();
  }
}