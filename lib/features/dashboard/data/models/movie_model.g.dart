// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => _MovieModel(
  movieId: (json['id'] as num).toInt(),
  title: json['title'] as String,
  rating: (json['vote_average'] as num).toDouble(),
  description: json['overview'] as String,
  releaseDate: json['release_date'] as String,
  genres: (json['genre_ids'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  backdropImage: json['backdrop_path'] as String?,
  posterImage: json['poster_path'] as String?,
);

Map<String, dynamic> _$MovieModelToJson(_MovieModel instance) =>
    <String, dynamic>{
      'id': instance.movieId,
      'title': instance.title,
      'vote_average': instance.rating,
      'overview': instance.description,
      'release_date': instance.releaseDate,
      'genre_ids': instance.genres,
      'backdrop_path': instance.backdropImage,
      'poster_path': instance.posterImage,
    };
