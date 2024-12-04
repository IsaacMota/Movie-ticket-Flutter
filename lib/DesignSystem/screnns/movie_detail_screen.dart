import 'package:flutter/material.dart';

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Avengers: Endgame',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Cor branca
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Genre: Action, Sci-Fi',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70, // Cor branca com opacidade
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Synopsis:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Cor branca
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'After the devastating events of Avengers: Infinity War, the universe is in ruins. With the help of remaining allies, the Avengers assemble once more to reverse Thanos\' actions and restore balance to the universe.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white70, // Cor branca com opacidade
              ),
            ),
          ],
        ),
      ),
    );
  }
}
