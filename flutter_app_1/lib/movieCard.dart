import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key, required this.image});

final String image;

  @override
  Widget build(BuildContext context) {
    return Container (
      width: 150,
      height: 200,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)
      ),
      clipBehavior: Clip.antiAlias,
      child: Image.asset(image, fit: BoxFit.cover),
    );
  }
}