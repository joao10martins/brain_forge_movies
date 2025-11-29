import 'package:brain_forge_movies/features/dashboard/data/models/movie.dart';
import 'package:equatable/equatable.dart';


class Dashboard extends Equatable {
  final List<Movie> movies;

  const Dashboard({required this.movies});

  @override
  List<Object?> get props => [movies];
}