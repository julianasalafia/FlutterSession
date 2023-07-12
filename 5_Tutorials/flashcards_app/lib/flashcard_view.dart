import 'package:flashcards_app/constants.dart';
import 'package:flutter/material.dart';

class FlashcardView extends StatelessWidget {
  FlashcardView({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    double blurRadius = 15.0;
    const padding = 8.0;
    double elevation = 4;

    return Padding(
      padding: const EdgeInsets.all(padding),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: blurRadius,
              color: kTextColor,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Card(
          elevation: elevation,
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
