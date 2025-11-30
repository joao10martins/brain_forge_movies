import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../cubit/dashboard_cubit.dart';
import '../cubit/dashboard_state.dart';
import '../widgets/movie_grid_item.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late final ScrollController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _controller.addListener(_onScroll);
  }

  void _onScroll() {
    if (_controller.position.pixels >= _controller.position.maxScrollExtent - 250) {
      final state = context.read<DashboardCubit>().state;
      state.whenOrNull(
        popularLoaded: (movies, page, totalPages, isLoadingMore) {
          if (!isLoadingMore && page < totalPages) {
            context.read<DashboardCubit>().loadMorePopularMovies();
          }
        },
      );
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => context.push('/search'),
          ),
        ],
      ),
      body: BlocBuilder<DashboardCubit, DashboardState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            isLoading: () => const Center(child: CircularProgressIndicator()),
            isLoadingMore: () => const Center(child: CircularProgressIndicator()),
            popularLoaded: (movies, page, totalPages, isLoadingMore) {
              return GridView.builder(
                controller: _controller,
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
            error: (msg) => Center(child: Text(msg)),
          );
        },
      ),
    );
  }
}