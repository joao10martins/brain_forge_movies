part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.isLoading() = _IsLoading;
  const factory SearchState.isLoadingMore() = _IsLoadingMore;
  const factory SearchState.searchLoaded({
        required List<Movie> movies,
        required int page,
        required int totalPages,
        @Default(false) bool isLoadingMore
      }) = _SearchLoaded;
  const factory SearchState.error(String message) = _Error;
}
