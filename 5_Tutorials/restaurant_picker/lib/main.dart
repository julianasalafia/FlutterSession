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
                      TypewriterAnimatedText('what do you want to eat?',
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
                        'pick restaurant',
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
