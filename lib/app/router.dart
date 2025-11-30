import 'package:brain_forge_movies/core/di/injector.dart';
import 'package:brain_forge_movies/features/dashboard/presentation/cubit/dashboard_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../features/dashboard/presentation/pages/dashboard_page.dart';


final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'dashboard',
      pageBuilder: (context, state) {
        return MaterialPage(
          child: BlocProvider(
            create: (_) => getIt<DashboardCubit>()..loadPopularMovies(),
            child: const DashboardPage(),
          ),
        );
      },
    ),
    // GoRoute(
    //   path: '/movie/:id',
    //   builder: (context, state) {
    //     final id = int.parse(state.params['id']!);
    //     return MovieDetailsPage(movieId: id);
    //   },
    // ),
  ],
);