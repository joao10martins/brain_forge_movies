import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/dashboard_cubit.dart';
import '../cubit/dashboard_state.dart';
import '../widgets/movie_grid_item.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => context.read<DashboardCubit>()..loadPopularMovies(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard'),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () => Navigator.pushNamed(context, '/search'),
            ),
          ],
        ),
        body: BlocBuilder<DashboardCubit, DashboardState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox.shrink(),
              loading: () => const Center(child: CircularProgressIndicator()),
              popularLoaded: (movies) {
                return GridView.builder(
                  padding: const EdgeInsets.all(12),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.55,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  ),
                  itemCount: movies.length,
                  itemBuilder: (context, index) {
                    final m = movies[index];
                    return MovieGridItem(movie: m);
                  },
                );
              },
              searchLoading: () => const Center(child: CircularProgressIndicator()),
              searchLoaded: (results) => ListView.builder(
                itemCount: results.length,
                itemBuilder: (c, i) => MovieGridItem(movie: results[i]),
              ),
              error: (msg) => Center(child: Text(msg)),
            );
          },
        ),
      ),
    );
  }
}