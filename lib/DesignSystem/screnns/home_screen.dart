import 'package:flutter/material.dart';
import '../components/bottom_nav_bar.dart';
import '../components/movie_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 0,
        onTap: (index) {},
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
          ),
          itemCount: 6, // Number of movies
          itemBuilder: (context, index) {
            return MovieCard(
              imageUrl: "https://via.placeholder.com/150",
              title: "Movie $index",
              genre: "Genre $index",
              onTap: () {},
            );
          },
        ),
      ),
    );
  }
}
