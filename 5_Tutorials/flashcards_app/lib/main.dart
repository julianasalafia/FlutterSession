import 'package:flashcards_app/constants.dart';
import 'package:flashcards_app/flashcard.dart';
import 'package:flashcards_app/flashcard_view.dart';
import 'package:flashcards_app/screens/input_page.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.black,
        ),
        textTheme: TextTheme(
          bodySmall: kColorizeTextStyle,
          bodyMedium: kColorizeTextStyle,
          bodyLarge: kColorizeTextStyle,
        ),
        scaffoldBackgroundColor: Colors.black,
      ),
      home: InputPage(),
    );
  }
}
