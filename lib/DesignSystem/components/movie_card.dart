import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String genre;
  final VoidCallback onTap;

  const MovieCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.genre,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              imageUrl,
              height: 180,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white, // Texto branco
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            genre,
            style: const TextStyle(
              color: Colors.white70, // Texto branco com opacidade
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
