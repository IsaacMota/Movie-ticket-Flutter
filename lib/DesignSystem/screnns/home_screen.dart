import 'package:flutter/material.dart';
import '../components/bottom_nav_bar.dart';
import '../components/movie_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(
            color: Color.fromARGB(
                255, 0, 0, 0), // Garante que o título seja branco
          ),
        ),
      ),
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
          itemCount: 6, // Número de filmes
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
      backgroundColor: Colors.black, // Fundo preto para toda a tela
    );
  }
}
