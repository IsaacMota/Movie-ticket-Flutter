import 'package:flutter/material.dart';
import '../components/ticket_card.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Tickets'),
      ),
      body: ListView(
        children: [
          TicketCard(
            movieTitle: 'Avengers: Infinity War',
            cinema: 'Cinema Park XYZ',
            date: '12/12/2024',
            time: '7:30 PM',
            onTap: () {
              // Adicione uma ação para o clique no ticket
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Ticket tapped!')),
              );
            },
          ),
          TicketCard(
            movieTitle: 'Avatar: The Way of Water',
            cinema: 'Cinema Park ABC',
            date: '13/12/2024',
            time: '9:00 PM',
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Another ticket tapped!')),
              );
            },
          ),
        ],
      ),
    );
  }
}
