import 'package:flutter/material.dart';
import 'package:flutter_app_1/movieCategory.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

final mostPopular = List.generate(3, (index) => index + 1).map((value) => 'assets/MostPopular/movie${value.toString()}.png').toList();
final newReleases = List.generate(3, (index) => index + 1).map((value) => 'assets/NewReleases/movie${value.toString()}.png').toList();

class _HomeState extends State<Home> {
  final searchController = TextEditingController();
  
  List<String> mostPopularFiltered = List<String>.from(mostPopular);
  List<String> newReleasesFiltered = List<String>.from(newReleases);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: TextFormField(
                  controller: searchController,
                  onChanged: onSearchTextChanged,
                  decoration: const InputDecoration(
                    hintText: 'What movie are you looking for?',
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(8)
                  ),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
             MovieCategory(images: newReleasesFiltered, name: 'New Releases'),
             MovieCategory(images: mostPopularFiltered, name: 'Most Popular')
            ],
          ),
        )
        )
    );
  }

  onSearchTextChanged(String text) async {
    if (text.isEmpty) {    // Check textfield is empty or not 
    mostPopularFiltered = List<String>.from(mostPopular);
    newReleasesFiltered = List<String>.from(newReleases);
      setState(() {});
      return;
    } else {
      mostPopularFiltered.clear();
      newReleasesFiltered.clear();
    }

    mostPopular.forEach((data) {
      if (data.toLowerCase().contains(text.toLowerCase().toString())) {
        mostPopularFiltered.add(data);
      }
    });

    newReleases.forEach((data) {
      if (data.toLowerCase().contains(text.toLowerCase().toString())) {
        newReleasesFiltered.add(data);
      }
    });

    setState(() {});
  }
}