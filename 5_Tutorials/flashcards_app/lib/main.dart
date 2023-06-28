import 'package:flashcards_app/flashcard.dart';
import 'package:flashcards_app/flashcard_view.dart';
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
  List<Flashcard> _flashcards = [
    Flashcard(
      question: 'What is Flutter?',
      answer:
          'Flutter is an open-source UI toolkit for creating exceptional front-end cross-platform applications',
    ),
    Flashcard(
        question:
            'Who developed the Flutter Framework and continues to maintain it today?',
        answer:
            'Google began developing Flutter back in 2015 and supports its continued development and maintenance today alongside a highly active open-source community.'),
    Flashcard(
        question:
            'Which programming language is used to build Flutter applications?',
        answer:
            'Flutter programs are written in Google’s own Dart programming language.'),
    Flashcard(
        question: 'How many types of widgets are there in Flutter?',
        answer:
            'here are two types of widgets available to developers in Flutter. These are stateful and stateless widgets.'),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 250,
                height: 250,
                child: FlipCard(
                  front: FlashcardView(
                    text: _flashcards[_currentIndex].question,
                  ),
                  back: FlashcardView(
                    text: _flashcards[_currentIndex].answer,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton.icon(
                      onPressed: showPreviousCard,
                      icon: Icon(Icons.chevron_left),
                      label: Text('Prev')),
                  OutlinedButton.icon(
                      onPressed: showNextCard,
                      icon: Icon(Icons.chevron_right),
                      label: Text('Next')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showNextCard() {
    setState(() {
      _currentIndex =
          (_currentIndex + 1 < _flashcards.length) ? _currentIndex + 1 : 0;
    });
  }

  void showPreviousCard() {
    setState(() {
      _currentIndex =
          (_currentIndex - 1 >= 0) ? _currentIndex - 1 : _flashcards.length - 1;
    });
  }
}
