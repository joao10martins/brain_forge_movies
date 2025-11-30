import 'dart:convert';

import 'package:brain_forge_movies/features/dashboard/data/models/movie_model.dart';
import 'package:brain_forge_movies/features/dashboard/domain/entities/movie.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../core/fixtures/fixture_reader.dart';

void main(){
  final tMovieModel = MovieModel(movieId: 1, title: 'Test Movie', rating: 5.0, description: 'Test Movie Description', genres: [1, 2, 3], releaseDate: '01-01-2025', backdropImage: 'testMovieBackdrop', posterImage: 'testMoviePoster');

  test(
      'should be a subclass of Movie entity',
      () async {
          // assert
          expect(tMovieModel, isA<Movie>());
      },
  );
  
  group('fromJson', (){
    test(
        'should return valid model',
        () async {
            // arrange
            final Map<String, dynamic> jsonMap = jsonDecode(fixture('movie.json'));
            // act
            final result = MovieModel.fromJson(jsonMap);
            // assert
            expect(result, tMovieModel);
        },
    );
  });

  group('toJson', (){
    test(
      'should return a JSON map containing the proper data',
      () async {
        // act
        final result = tMovieModel.toJson();
        // assert
        final expectedMap = {
          "backdrop_path": "testMovieBackdrop",
          "genre_ids": [
            1,
            2,
            3
          ],
          "id": 1,
          "overview": "Test Movie Description",
          "poster_path": "testMoviePoster",
          "release_date": "01-01-2025",
          "title": "Test Movie",
          "vote_average": 5,
        };
        expect(result, expectedMap);
      },
    );
  });
}