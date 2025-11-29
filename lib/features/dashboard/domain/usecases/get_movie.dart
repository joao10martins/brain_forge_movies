import 'package:brain_forge_movies/core/error/failures.dart';
import 'package:brain_forge_movies/core/usecases/usecase.dart';
import 'package:brain_forge_movies/features/dashboard/data/models/movie.dart';
import 'package:brain_forge_movies/features/dashboard/domain/repositories/dashboard_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetMovie implements UseCase<List<Movie>, Params> {
  final DashboardRepository repository;

  GetMovie(this.repository);

  @override
  Future<Either<Failure, List<Movie>>> call(Params params) async => await repository.getMovie(params.movieName);
}

class Params extends Equatable {
  final String movieName;

  const Params({required this.movieName});

  @override
  List<Object?> get props => [movieName];
}