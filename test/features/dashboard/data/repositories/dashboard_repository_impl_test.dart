import 'package:brain_forge_movies/core/network/network_info.dart';
import 'package:brain_forge_movies/features/dashboard/data/datasources/dashboard_remote_datasource.dart';
import 'package:brain_forge_movies/features/dashboard/data/models/movie_model.dart';
import 'package:brain_forge_movies/features/dashboard/data/repositories/dashboard_repository_impl.dart';
import 'package:brain_forge_movies/features/dashboard/domain/entities/movie.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateNiceMocks([MockSpec<DashboardRemoteDataSource>(), MockSpec<NetworkInfo>()])
import 'dashboard_repository_impl_test.mocks.dart';

void main(){
  late DashboardRepositoryImpl repositoryImpl;
  late MockDashboardRemoteDataSource mockDashboardRemoteDataSource;
  late MockNetworkInfo mockNetworkInfo;

  setUp((){
    mockDashboardRemoteDataSource = MockDashboardRemoteDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repositoryImpl = DashboardRepositoryImpl(
      remoteDataSource: mockDashboardRemoteDataSource,
      networkInfo: mockNetworkInfo,
    );
  });

  group('getPopularMovies', () {
    final tMovieModel = MovieModel(movieId: 1, title: 'Test Movie', rating: 5, description: 'Test Movie Description', genres: [1, 2, 3], releaseDate: '01-01-2025', backdropImage: 'testMovieBackdrop', posterImage: 'testMoviePoster');
    final Movie tMovie = tMovieModel as Movie;

    test(
        'should check if the device is online',
        () async {
            // arrange
            when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
            // act
            repositoryImpl.getPopularMovies();
            // assert
            verify(mockNetworkInfo.isConnected);
        },
    );

    group('device is online', () {
      setUp((){
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      });

      test(
          'should return data when the call to API is successful',
          () async {
              // arrange
              when(mockDashboardRemoteDataSource.getPopularMovies())
                  .thenAnswer((_) async => tMovieModel);
              // act
              final result = await repositoryImpl.getPopularMovies();
              // assert
              verify(mockDashboardRemoteDataSource.getPopularMovies());
              expect(result, equals(Right(tMovie)));
          },
      );
    });

    group('device is offline', () {
      setUp((){
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
      });
    });
  });
}