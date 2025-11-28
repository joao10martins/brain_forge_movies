import 'package:brain_forge_movies/core/network/models/movie.dart';
import 'package:equatable/equatable.dart';

class Dashboard extends Equatable {
  final List<Movie> popularMovies;

  const Dashboard({required this.popularMovies});

  @override
  List<Object?> get props => [popularMovies];
}