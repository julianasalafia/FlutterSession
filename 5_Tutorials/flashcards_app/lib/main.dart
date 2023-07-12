import 'package:flashcards_app/constants.dart';
import 'package:flashcards_app/screens/input_page.dart';
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
    double radius = 15.0;

    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          color: Colors.black,
        ),
        textTheme: const TextTheme(
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
