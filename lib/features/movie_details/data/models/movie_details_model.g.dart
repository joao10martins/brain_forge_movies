// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieDetailsModel _$MovieDetailsModelFromJson(Map<String, dynamic> json) =>
    _MovieDetailsModel(
      backdropPath: json['backdrop_path'] as String,
      posterPath: json['poster_path'] as String,
      budget: (json['budget'] as num).toInt(),
      genres: (json['genres'] as List<dynamic>)
          .map((e) => GenreModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      productionCompanies: (json['production_companies'] as List<dynamic>)
          .map(
            (e) => ProductionCompanyModel.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      releaseDate: json['release_date'] as String,
      revenue: (json['revenue'] as num).toInt(),
      runtime: (json['runtime'] as num).toInt(),
      title: json['title'] as String,
      rating: (json['vote_average'] as num).toDouble(),
      description: json['overview'] as String,
    );

Map<String, dynamic> _$MovieDetailsModelToJson(_MovieDetailsModel instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
      'budget': instance.budget,
      'genres': instance.genres,
      'production_companies': instance.productionCompanies,
      'release_date': instance.releaseDate,
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'title': instance.title,
      'vote_average': instance.rating,
      'overview': instance.description,
    };
