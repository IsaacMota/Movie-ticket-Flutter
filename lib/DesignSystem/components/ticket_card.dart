import 'package:flutter/material.dart';

class TicketCard extends StatelessWidget {
  final String movieTitle;
  final String cinema;
  final String date;
  final String time;
  final VoidCallback onTap;

  const TicketCard({
    Key? key,
    required this.movieTitle,
    required this.cinema,
    required this.date,
    required this.time,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                movieTitle,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Cinema: $cinema'),
                  Text('Date: $date'),
                  Text('Time: $time'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
