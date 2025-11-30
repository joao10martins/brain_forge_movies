import 'package:brain_forge_movies/features/dashboard/domain/entities/movie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:brain_forge_movies/features/dashboard/presentation/cubit/search_cubit.dart';

class SearchMoviesPage extends StatefulWidget {
  const SearchMoviesPage({super.key});

  @override
  State<SearchMoviesPage> createState() => _SearchMoviesPageState();
}

class _SearchMoviesPageState extends State<SearchMoviesPage> {
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      context.read<SearchCubit>().loadMoreSearchResults();
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Movies'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search movies...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                suffixIcon: _searchController.text.isNotEmpty
                    ? IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    _searchController.clear();
                    setState(() {});
                  },
                )
                    : null,
              ),
              onChanged: (value) {
                setState(() {});
                if (value.isNotEmpty) {
                  context.read<SearchCubit>().searchMovies(value);
                }
              },
            ),
          ),
          Expanded(
            child: BlocBuilder<SearchCubit, SearchState>(
              builder: (context, state) {
                return state.when(
                  initial: () => Center(
                    child: Text('Search for movies to get started'),
                  ),
                  isLoading: () => const Center(child: CircularProgressIndicator()),
                  isLoadingMore: () => const Center(child: CircularProgressIndicator()),
                  searchLoaded: (movies, currentPage, totalPages, isLoadingMore) {
                    return ListView.builder(
                      controller: _scrollController,
                      itemCount: movies.length + (isLoadingMore ? 1 : 0),
                      itemBuilder: (context, index) {
                        if (index == movies.length) {
                          return const Center(
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: CircularProgressIndicator(),
                            ),
                          );
                        }
                        final movie = movies[index];
                        return MovieTile(movie: movie);
                      },
                    );
                  },
                  error: (message) => Center(
                    child: Text('Error: $message'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MovieTile extends StatelessWidget {
  final Movie movie;

  const MovieTile({required this.movie, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: movie.posterPath.isNotEmpty
          ? Image.network(
        'https://image.tmdb.org/t/p/w92${movie.posterPath}',
        errorBuilder: (_, __, ___) => const Icon(Icons.image),
      )
          : const Icon(Icons.image),
      title: Text(movie.title),
      subtitle: Text(movie.releaseDate),
      trailing: Text('${movie.rating}'),
      onTap: () {
        // Navigate to movie detail if needed
      },
    );
  }
}
