import 'package:flutter/material.dart';

class FlashcardView extends StatelessWidget {
  FlashcardView({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Center(
        child: Text(text),
      ),
    );
  }
}
