import 'package:equatable/equatable.dart';
import 'genre.dart';
import 'production_company.dart';

class MovieDetails extends Equatable {
  final String backdropPath;
  final String posterPath;
  final int budget;
  final List<Genre> genres;
  final List<ProductionCompany> productionCompanies;
  final String releaseDate;
  final int revenue;
  final int runtime;
  final String title;
  final double rating;
  final String description;

  const MovieDetails({
    required this.backdropPath,
    required this.posterPath,
    required this.budget,
    required this.genres,
    required this.productionCompanies,
    required this.releaseDate,
    required this.revenue,
    required this.runtime,
    required this.title,
    required this.rating,
    required this.description,
  });

  @override
  List<Object?> get props => [
    backdropPath,
    posterPath,
    budget,
    genres,
    productionCompanies,
    releaseDate,
    revenue,
    runtime,
    title,
    rating,
    description,
  ];
}
