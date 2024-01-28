import 'package:flutter/material.dart';
import 'package:flutter_app_1/movieCard.dart';

class MovieCategory extends StatelessWidget {
  const MovieCategory({super.key,  required this.name, required this.images});

final String name;
final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(name, style: const TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(8),
                  children: List.generate(images.length, (index) => MovieCard(image: images[index])),
                ),
              )
      ],
    );
  }
}