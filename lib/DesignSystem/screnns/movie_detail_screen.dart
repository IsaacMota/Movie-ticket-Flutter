import 'package:flutter/material.dart';

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/images/movie_placeholder.png', // Substitua pela imagem correta
                height: 250,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Avengers: Infinity War',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              'Release Date: April 27, 2018',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),
            Text(
              'Description:',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              'The Avengers must stop Thanos, an intergalactic warlord, '
              'from getting his hands on all the infinity stones. However, '
              'Thanos is prepared to go to any lengths to carry out his insane plan.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implementação futura: navegação ou ações
              },
              child: const Text('Book Tickets'),
            ),
          ],
        ),
      ),
    );
  }
}
