import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../domain/entities/movie.dart';

class MovieGridItem extends StatelessWidget {
  final Movie movie;
  const MovieGridItem({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    final poster = 'https://image.tmdb.org/t/p/w500${movie.posterPath}';

    return GestureDetector(
      onTap: () => context.push('/details/${movie.id}'),
      child: Column(
        children: [
          Expanded(
            child: poster != null
                ? ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(poster, fit: BoxFit.cover, width: double.infinity),
            )
                : Container(color: Colors.grey),
          ),
          const SizedBox(height: 6),
          Text(
            movie.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
