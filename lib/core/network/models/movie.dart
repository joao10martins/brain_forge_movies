import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.g.dart';

@JsonSerializable()
class Movie {
  Movie({
    required this.movieId,
    required this.title,
    required this.rating,
    required this.description,
    required this.releaseDate,
    required this.genres,
    required this.backdropImage,
    required this.posterImage,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  @JsonKey(name: 'id')
  int movieId;
  String title;
  int rating;
  @JsonKey(name: 'overview')
  String description;
  @JsonKey(name: 'release_date')
  String releaseDate;
  @JsonKey(name: 'genre_ids')
  List<int> genres;
  @JsonKey(name: 'backdrop_path')
  String backdropImage;
  @JsonKey(name: 'poster_path')
  String posterImage;
}
