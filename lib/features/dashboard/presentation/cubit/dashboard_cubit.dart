import 'package:brain_forge_movies/features/dashboard/domain/entities/movie.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/usecases/get_popular_movies.dart';
import 'dashboard_state.dart';

@injectable
class DashboardCubit extends Cubit<DashboardState> {
  final GetPopularMovies getPopularMovies;

  DashboardCubit(this.getPopularMovies)
      : super(DashboardState.initial());

  Future<void> loadPopularMovies() async {
    emit(DashboardState.isLoading());

    final response = await getPopularMovies(Params(page: 1));

    response.fold(
          (failure) => emit(DashboardState.error(failure.getMessage())),
          (data) => emit(DashboardState.popularLoaded(movies: data.movies, page: data.page, totalPages: data.totalPages)),
    );
  }

  Future<void> loadMorePopularMovies() async {
    // Extract current loaded state synchronously
    final loaded = state.maybeWhen(
      popularLoaded: (movies, page, totalPages, isLoadingMore) {
        return {
          'movies': movies,
          'page': page,
          'totalPages': totalPages,
          'isLoadingMore': isLoadingMore,
        };
      },
      orElse: () => null,
    );

    if (loaded == null) {
      // not in the loaded state, nothing to append to
      return;
    }

    final List<Movie> movies = loaded['movies'] as List<Movie>;
    final int page = loaded['page'] as int;
    final int totalPages = loaded['totalPages'] as int;
    final bool isLoadingMore = loaded['isLoadingMore'] as bool;

    if (isLoadingMore) return;       // already loading more
    if (page >= totalPages) return;  // no more pages

    // emit state that indicates loading more (rebuilds UI)
    emit(DashboardState.popularLoaded(
      movies: movies,
      page: page,
      totalPages: totalPages,
      isLoadingMore: true,
    ));

    final nextPage = page + 1;
    // Request next page (await)
    final result = await getPopularMovies(Params(page: nextPage));

    result.fold(
          (failure) => emit(DashboardState.error(failure.getMessage())),
          (data) => emit(DashboardState.popularLoaded(
            movies: [...movies, ...data.movies],
            page: nextPage,
            totalPages: data.totalPages,
            // nextPage might equal totalPages if finished
            isLoadingMore: false,
          )),
    );
  }
}