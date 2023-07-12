import 'package:flashcards_app/flashcard_view.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flashcards_app/flashcard_data.dart';
import '../flashcard.dart';
import 'package:flashcards_app/build_container.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final List<Flashcard> _flashcards = flashcards;

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    String leftButton = 'PREV';
    String rightButton = 'NEXT';

    double width = 250.0;
    double height = 250.0;

    const padding = 25.0;

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(padding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: width,
                height: height,
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
                  buttonContainer(
                      text: leftButton,
                      onPressed: showPreviousCard,
                      icon: Icon(Icons.chevron_left)),
                  buttonContainer(
                      text: rightButton,
                      onPressed: showNextCard,
                      icon: Icon(Icons.chevron_right)),
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
