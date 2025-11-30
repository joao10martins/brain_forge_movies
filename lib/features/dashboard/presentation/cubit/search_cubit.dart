import 'package:bloc/bloc.dart';
import 'package:brain_forge_movies/features/dashboard/domain/entities/movie.dart';
import 'package:brain_forge_movies/features/dashboard/domain/usecases/get_movies_by_name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

@injectable
class SearchCubit extends Cubit<SearchState> {
  final GetMoviesByName getMoviesByName;
  String _currentQuery = '';

  SearchCubit({required this.getMoviesByName}) : super(const SearchState.initial());

  Future<void> searchMovies(String movieName) async {
    _currentQuery = movieName;
    emit(const SearchState.isLoading());

    final result = await getMoviesByName(Params(movieName: movieName, page: 1));

    result.fold(
          (failure) => emit(SearchState.error(failure.toString())),
          (data) => emit(SearchState.searchLoaded(movies: data.movies, page: data.page, totalPages: data.totalPages)),
    );
  }

  Future<void> loadMoreSearchResults() async {
    final currentState = state;
    currentState.whenOrNull(
      searchLoaded: (movies, currentPage, totalPages, isLoadingMore) {
        if (!isLoadingMore && currentPage < totalPages) {
          _loadSearchPage(currentPage + 1, movies);
        }
      },
    );
  }

  Future<void> _loadSearchPage(int pageNumber, List<Movie> currentMovies) async {
    emit(SearchState.searchLoaded(
      movies: currentMovies,
      page: pageNumber - 1,
      totalPages: (state as _SearchLoaded).totalPages,
      isLoadingMore: true,
    ));

    final result = await getMoviesByName(
      Params(movieName: _currentQuery, page: pageNumber),
    );

    result.fold(
          (failure) => emit(SearchState.error(failure.toString())),
          (searchResult) => emit(SearchState.searchLoaded(
        movies: [...currentMovies, ...searchResult.movies],
        page: searchResult.page,
        totalPages: searchResult.totalPages,
        isLoadingMore: false,
      )),
    );
  }
}
