import 'package:brain_forge_movies/core/usecases/usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/get_popular_movies.dart';
import '../../domain/repositories/dashboard_repository.dart';
import 'dashboard_state.dart';

@injectable
class DashboardCubit extends Cubit<DashboardState> {
  final GetPopularMovies getPopularMovies;

  DashboardCubit(this.getPopularMovies)
      : super(DashboardState.initial());

  Future<void> loadPopularMovies() async {
    emit(DashboardState.loading());

    final response = await getPopularMovies.call(NoParams());

    response.fold(
          (failure) => emit(DashboardState.error(failure.getMessage())),
          (movies) => emit(DashboardState.popularLoaded(movies)),
    );
  }
}