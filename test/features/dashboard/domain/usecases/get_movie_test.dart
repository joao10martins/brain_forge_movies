import 'package:brain_forge_movies/core/usecases/usecase.dart';
import 'package:brain_forge_movies/features/dashboard/domain/entities/movie.dart';
import 'package:brain_forge_movies/features/dashboard/domain/repositories/dashboard_repository.dart';
import 'package:brain_forge_movies/features/dashboard/domain/usecases/get_movie.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateNiceMocks([MockSpec<DashboardRepository>()])
import 'get_movie_test.mocks.dart';


void main() {
  late GetMovie usecase;
  late MockDashboardRepository mockDashboardRepository;
  late String tMovieName;
  late List<Movie> tMovies;

  setUp(() {
    mockDashboardRepository = MockDashboardRepository();
    usecase = GetMovie(mockDashboardRepository);

    tMovieName = 'Superman';
    tMovies = [
      Movie(movieId: 1, title: 'Test Movie', rating: 5, description: 'Test Movie Description', genres: [1, 2, 3], releaseDate: '01-01-2025', backdropImage: 'testMovieBackdrop', posterImage: 'testMoviePoster'),
      Movie(movieId: 2, title: 'Another Test Movie', rating: 6, description: 'Another Test Movie Description', genres: [5, 6], releaseDate: '28-11-2025', backdropImage: 'anotherTestMovieBackdrop', posterImage: 'anotherTestMoviePoster'),
    ];
  });

  test(
    'should get a list of movies based on the movie name from the repository',
        () async {
      // arrange
      when(mockDashboardRepository.getMovie(tMovieName)).thenAnswer((_) async => Right(tMovies));
      // act
      final result = await usecase(Params(movieName: tMovieName));
      // assert
      expect(result, Right(tMovies));
      verify(mockDashboardRepository.getMovie(tMovieName));
      verifyNoMoreInteractions(mockDashboardRepository);
    },
  );
}