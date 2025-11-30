import 'package:brain_forge_movies/core/di/injector.dart';
import 'package:brain_forge_movies/features/dashboard/presentation/cubit/dashboard_cubit.dart';
import 'package:brain_forge_movies/features/dashboard/presentation/cubit/search_cubit.dart';
import 'package:brain_forge_movies/features/dashboard/presentation/pages/search_movies_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../features/dashboard/presentation/pages/dashboard_page.dart';
import '../features/movie_details/presentation/cubit/movie_details_cubit.dart';
import '../features/movie_details/presentation/pages/movie_details_page.dart';


final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'dashboard',
      pageBuilder: (context, state) {
        return MaterialPage(
          child: BlocProvider(
            create: (_) => getIt<DashboardCubit>()..loadPopularMovies(),
            child: DashboardPage(),
          ),
        );
      },
    ),
    GoRoute(
      path: '/search',
      name: 'search',
      pageBuilder: (context, state) {
        return MaterialPage(
          child: BlocProvider(
            create: (_) => getIt<SearchCubit>(),
            child: SearchMoviesPage(),
          ),
        );
      },
    ),
    GoRoute(
      path: '/details/:id',
      name: 'details',
      builder: (context, state) {
        final id = int.parse(state.pathParameters['id']!);

        return BlocProvider(
          create: (_) => getIt<MovieDetailsCubit>()..load(id),
          child: MovieDetailsPage(movieId: id),
        );
      },
    ),
  ],
);