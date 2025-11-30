import 'package:brain_forge_movies/core/usecases/usecase.dart';
import 'package:brain_forge_movies/features/dashboard/data/models/movie_model.dart';
import 'package:brain_forge_movies/features/dashboard/domain/repositories/dashboard_repository.dart';
import 'package:brain_forge_movies/features/dashboard/domain/usecases/get_popular_movies.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateNiceMocks([MockSpec<DashboardRepository>()])
import 'get_popular_movies_test.mocks.dart';


void main() {
  late GetPopularMovies usecase;
  late MockDashboardRepository mockDashboardRepository;
  late List<MovieModel> tPopularMovies;

  setUp(() {
    mockDashboardRepository = MockDashboardRepository();
    usecase = GetPopularMovies(mockDashboardRepository);

    tPopularMovies = [
      MovieModel(movieId: 1, title: 'Test Movie', rating: 5, description: 'Test Movie Description', genres: [1, 2, 3], releaseDate: '01-01-2025', backdropImage: 'testMovieBackdrop', posterImage: 'testMoviePoster'),
      MovieModel(movieId: 2, title: 'Another Movie', rating: 6, description: 'Another Test Movie Description', genres: [5, 6], releaseDate: '28-11-2025', backdropImage: 'anotherTestMovieBackdrop', posterImage: 'anotherTestMoviePoster'),
    ];
  });

  test(
      'should get a list of popular movies from the repository',
      () async {
          // arrange
          when(mockDashboardRepository.getPopularMovies()).thenAnswer((_) async => Right(tPopularMovies));
          // act
          final result = await usecase(NoParams());
          // assert
          expect(result, Right(tPopularMovies));
          verify(mockDashboardRepository.getPopularMovies());
          verifyNoMoreInteractions(mockDashboardRepository);
      },
  );
}