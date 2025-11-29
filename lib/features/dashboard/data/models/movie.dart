import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
abstract class Movie with _$Movie {
  const factory Movie({
    @JsonKey(name: 'id') required int movieId,
    required String title,
    @JsonKey(name: 'vote_average') required double rating,
    @JsonKey(name: 'overview') required String description,
    @JsonKey(name: 'release_date') required String releaseDate,
    @JsonKey(name: 'genre_ids') required List<int> genres,
    @JsonKey(name: 'backdrop_path') required String backdropImage,
    @JsonKey(name: 'poster_path') required String posterImage,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) =>
      _$MovieFromJson(json);
}