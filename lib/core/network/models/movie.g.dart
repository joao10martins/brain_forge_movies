// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
  movieId: (json['id'] as num).toInt(),
  title: json['title'] as String,
  rating: (json['rating'] as num).toInt(),
  description: json['overview'] as String,
  releaseDate: json['release_date'] as String,
  genres: (json['genre_ids'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  backdropImage: json['backdrop_path'] as String,
  posterImage: json['poster_path'] as String,
);

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
  'id': instance.movieId,
  'title': instance.title,
  'rating': instance.rating,
  'overview': instance.description,
  'release_date': instance.releaseDate,
  'genre_ids': instance.genres,
  'backdrop_path': instance.backdropImage,
  'poster_path': instance.posterImage,
};
