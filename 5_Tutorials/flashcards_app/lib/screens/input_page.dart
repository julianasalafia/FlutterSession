import 'package:flashcards_app/constants.dart';
import 'package:flashcards_app/flashcard_view.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flashcards_app/flashcard_data.dart';
import '../flashcard.dart';

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
    return Scaffold(
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
                Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 15.0,
                        color: kTextColor,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: OutlinedButton.icon(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                        foregroundColor: MaterialStateProperty.all(kTextColor),
                        side: MaterialStateProperty.all(BorderSide.none),
                      ),
                      onPressed: showPreviousCard,
                      icon: Icon(Icons.chevron_left),
                      label: Text(
                        'Prev',
                        style: kColorizeTextStyle,
                      )),
                ),
                Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 15.0,
                        color: kTextColor,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: OutlinedButton.icon(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                        foregroundColor: MaterialStateProperty.all(kTextColor),
                        side: MaterialStateProperty.all(BorderSide.none),
                      ),
                      onPressed: showNextCard,
                      icon: Icon(Icons.chevron_right),
                      label: Text(
                        'Next',
                        style: kColorizeTextStyle,
                      )),
                ),
              ],
            ),
          ],
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
