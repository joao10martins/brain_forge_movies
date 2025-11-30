import 'package:brain_forge_movies/features/dashboard/domain/entities/movie.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
abstract class MovieModel with _$MovieModel {
  const factory MovieModel({
    @JsonKey(name: 'id') required int movieId,
    required String title,
    @JsonKey(name: 'vote_average') required double rating,
    @JsonKey(name: 'overview') required String description,
    @JsonKey(name: 'release_date') required String releaseDate,
    @JsonKey(name: 'genre_ids') required List<int> genres,
    @JsonKey(name: 'backdrop_path') required String backdropImage,
    @JsonKey(name: 'poster_path') required String posterImage,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}

extension MovieModelMapper on MovieModel {
  Movie toEntity() => Movie(
    id: movieId,
    title: title,
    rating: rating.toDouble(),
    description: description,
    releaseDate: releaseDate,
    genres: genres,
    backdropPath: backdropImage,
    posterPath: posterImage,
  );
}