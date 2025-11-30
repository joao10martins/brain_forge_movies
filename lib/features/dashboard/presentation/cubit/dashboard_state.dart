import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/movie.dart';

part 'dashboard_state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = _Initial;
  const factory DashboardState.isLoading() = _IsLoading;
  const factory DashboardState.isLoadingMore() = _IsLoadingMore;
  const factory DashboardState.popularLoaded({
    required List<Movie> movies,
    required int page,
    required int totalPages,
    @Default(false) bool isLoadingMore
  }) = _PopularLoaded;
  const factory DashboardState.error(String message) = _Error;
}