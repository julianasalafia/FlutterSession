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
    'japanese food',
    'mexican food',
    'breakfast',
    'snacks',
    'hamburger',
    'popcorn',
    'chinese food',
    'french fries',
    'pizza',
    'poke bowl',
    'spaghetti',
  ];

  int? currentIndex;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 150.0, bottom: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AnimatedTextKit(repeatForever: false, animatedTexts: [
                      TypewriterAnimatedText('what should i eat?',
                          textStyle: kColorizeTextStyle,
                          speed: Duration(milliseconds: 60)),
                    ]),
                    if (currentIndex != null)
                      Text(
                        restaurants[currentIndex!].toUpperCase(),
                        style: kColorizeTextStyle,
                      ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: kTextColor.withOpacity(0.08),
                      spreadRadius: 2,
                      blurRadius: 3.0,
                      offset: Offset(0, 0),
                    ),
                  ]),
                  child: TextButton(
                      onPressed: () {
                        updateIndex();
                      },
                      child: Text(
                        'discover',
                        style: kColorizeTextStyle,
                      ),
                      style: TextButton.styleFrom(
                          side: BorderSide(color: kTextColor, width: 1.0))),
                ),
              ],
            ),
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
