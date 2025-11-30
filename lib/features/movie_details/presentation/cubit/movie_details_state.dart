part of 'movie_details_cubit.dart';

@freezed
class MovieDetailsState with _$MovieDetailsState {
  const factory MovieDetailsState.initial() = _Initial;
  const factory MovieDetailsState.isLoading() = _IsLoading;
  const factory MovieDetailsState.detailsLoaded(MovieDetails movie) = _DetailsLoaded;
  const factory MovieDetailsState.error(String message) = _Error;
}
