import 'package:flutter/material.dart';
import 'package:pokedex_app/pokedex_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context).copyWith(
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: Colors.red,
                secondary: Colors.red,
              )),
      home: PokedexView(),
    );
  }
}
