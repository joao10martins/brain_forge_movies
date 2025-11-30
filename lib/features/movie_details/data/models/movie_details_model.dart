import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/movie_details.dart';
import 'genre_model.dart';
import 'production_company_model.dart';

part 'movie_details_model.freezed.dart';
part 'movie_details_model.g.dart';

@freezed
abstract class MovieDetailsModel with _$MovieDetailsModel {
  const factory MovieDetailsModel({
    @JsonKey(name: 'backdrop_path') required String backdropPath,
    @JsonKey(name: 'poster_path') required String posterPath,
    required int budget,
    required List<GenreModel> genres,
    @JsonKey(name: 'production_companies') required List<ProductionCompanyModel> productionCompanies,
    @JsonKey(name: 'release_date') required String releaseDate,
    required int revenue,
    required int runtime,
    required String title,
    @JsonKey(name: 'vote_average') required double rating,
    @JsonKey(name: 'overview') required String description,
  }) = _MovieDetailsModel;

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsModelFromJson(json);
}

extension MovieDetailsMapper on MovieDetailsModel {
  MovieDetails toEntity() {
    return MovieDetails(
      backdropPath: backdropPath,
      posterPath: posterPath,
      budget: budget,
      genres: genres.map((e) => e.toEntity()).toList(),
      productionCompanies: productionCompanies.map((e) => e.toEntity()).toList(),
      releaseDate: releaseDate,
      revenue: revenue,
      runtime: runtime,
      title: title,
      rating: rating,
      description: description,
    );
  }

}
