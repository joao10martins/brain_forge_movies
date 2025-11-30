// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:brain_forge_movies/core/di/api_module.dart' as _i788;
import 'package:brain_forge_movies/core/di/dashboard_module.dart' as _i356;
import 'package:brain_forge_movies/core/network/api/api_client.dart' as _i12;
import 'package:brain_forge_movies/features/dashboard/data/datasources/dashboard_remote_datasource.dart'
    as _i566;
import 'package:brain_forge_movies/features/dashboard/domain/repositories/dashboard_repository.dart'
    as _i865;
import 'package:brain_forge_movies/features/dashboard/domain/usecases/get_popular_movies.dart'
    as _i453;
import 'package:brain_forge_movies/features/dashboard/presentation/cubit/dashboard_cubit.dart'
    as _i542;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final apiModule = _$ApiModule();
    final dashboardModule = _$DashboardModule();
    gh.lazySingleton<_i12.ApiClient>(() => apiModule.provideApiClient());
    gh.lazySingleton<_i566.DashboardRemoteDataSource>(
      () => dashboardModule.remoteDataSource(gh<_i12.ApiClient>()),
    );
    gh.lazySingleton<_i865.DashboardRepository>(
      () => dashboardModule.dashboardRepository(
        gh<_i566.DashboardRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i453.GetPopularMovies>(
      () => dashboardModule.getPopularMovies(gh<_i865.DashboardRepository>()),
    );
    gh.factory<_i542.DashboardCubit>(
      () => _i542.DashboardCubit(gh<_i453.GetPopularMovies>()),
    );
    return this;
  }
}

class _$ApiModule extends _i788.ApiModule {}

class _$DashboardModule extends _i356.DashboardModule {}
