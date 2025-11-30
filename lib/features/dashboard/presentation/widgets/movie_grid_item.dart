import 'package:flutter/material.dart';
import '../../domain/entities/movie.dart';

class MovieGridItem extends StatelessWidget {
  final Movie movie;
  const MovieGridItem({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    final poster = movie.posterPath != null ? 'https://image.tmdb.org/t/p/w500${movie.posterPath}' : null;

    return GestureDetector(
      onTap: () {
        // Navigate to details route, e.g.:
        // Navigator.pushNamed(context, '/movie/${movie.id}');
      },
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
