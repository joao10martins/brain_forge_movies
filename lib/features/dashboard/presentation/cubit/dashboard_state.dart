import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/movie.dart';

part 'dashboard_state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = _Initial;
  const factory DashboardState.loading() = _Loading;
  const factory DashboardState.popularLoaded(List<Movie> popular) = _PopularLoaded;
  const factory DashboardState.searchLoading() = _SearchLoading;
  const factory DashboardState.searchLoaded(List<Movie> results) = _SearchLoaded;
  const factory DashboardState.error(String message) = _Error;
}