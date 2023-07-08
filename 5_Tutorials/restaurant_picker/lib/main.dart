import 'dart:math';

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
              Text(
                'What do you want to eat? ',
                style: TextStyle(
                    color: kTextColor, fontFamily: 'Courier', fontSize: 20),
              ),
              SizedBox(height: 5.0),
              if (currentIndex != null)
                Text(
                  restaurants[currentIndex!],
                  style: TextStyle(
                    fontSize: 30.0,
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
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
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
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
