import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> restaurants = [
    'McDonald\'s',
    'Olive Garden',
    'Pizza Hut',
    'Panda Express',
    'Subway',
    'The Waffle King',
  ];

  int? currentIndex;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedTextKit(animatedTexts: [
                TypewriterAnimatedText('what do you want to eat?',
                    textStyle: TextStyle(
                        fontSize: 16.0,
                        color: kTextColor,
                        fontFamily: 'Courier'),
                    speed: Duration(milliseconds: 100)),
              ]),
              SizedBox(height: 5.0),
              if (currentIndex != null)
                Text(
                  restaurants[currentIndex!],
                  style: TextStyle(
                    fontSize: 70.0,
                    color: kTextColor,
                    fontFamily: 'Rubik',
                  ),
                ),
              SizedBox(height: 10.0),
              TextButton(
                  onPressed: () {
                    updateIndex();
                  },
                  child: Text(
                    'Pick restaurant',
                  ),
                  style: TextButton.styleFrom(
                    shape: StarBorder(),
                    padding: EdgeInsets.fromLTRB(25.0, 20.0, 25.0, 20.0),
                    foregroundColor: Colors.white,
                    backgroundColor: kTextColor,
                  )),
            ],
          ),
        ),
      ),
    );
  }

  void updateIndex() {
    final random = Random();
    final index = random.nextInt(restaurants.length);
    setState(() {
      currentIndex = index;
    });
  }
}
