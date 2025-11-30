import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/movie_details.dart';
import '../../domain/usecases/get_movie_details.dart';

part 'movie_details_state.dart';
part 'movie_details_cubit.freezed.dart';

@injectable
class MovieDetailsCubit extends Cubit<MovieDetailsState> {
  MovieDetailsCubit(this.getMovieDetails)
      : super(const MovieDetailsState.initial());

  final GetMovieDetails getMovieDetails;

  Future<void> load(int id) async {
    emit(const MovieDetailsState.isLoading());

    final result = await getMovieDetails(id);

    result.fold(
          (failure) => emit(MovieDetailsState.error(failure.getMessage())),
          (data) => emit(MovieDetailsState.detailsLoaded(data)),
    );
  }
}
