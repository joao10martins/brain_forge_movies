import '../../../../core/network/api/api_client.dart';
import '../models/movie_details_model.dart';

abstract class MovieDetailsRemoteDataSource {
  Future<MovieDetailsModel> getMovieDetails(int movieId);
}

class MovieDetailsRemoteDataSourceImpl implements MovieDetailsRemoteDataSource {
  final ApiClient client;

  MovieDetailsRemoteDataSourceImpl(this.client);

  @override
  Future<MovieDetailsModel> getMovieDetails(int movieId) async {
    final response = await client.get('/movie/$movieId');

    return MovieDetailsModel.fromJson(response);
  }
}
