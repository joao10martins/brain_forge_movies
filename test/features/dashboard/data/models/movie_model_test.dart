import 'package:brain_forge_movies/features/dashboard/data/models/movie.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  final tMovieModel = Movie(
      movieId: 1,
      title: 'Test Movie',
      rating: 6,
      description: 'Test Description',
      releaseDate: '23-04-2023',
      genres: [12, 32, 1],
      backdropImage: 'test backdropImage',
      posterImage: 'test posterImage',
  );

  test(
      'should be a subclass of Movie entity',
      () async {
          // assert
          expect(tMovieModel, isA<Movie>());
      },
  );
}