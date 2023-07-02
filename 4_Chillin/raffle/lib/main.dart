import 'dart:math';

import 'package:flutter/material.dart';

Color greenButton = Color(0xFF2DD0A3);

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int? raffle;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 350,
                height: 350,
              ),
              Text(
                'choose a number between 0 and 10, then click play',
                style: TextStyle(fontSize: 16.0),
              ),
              if (raffle != null)
                Text(
                  raffle.toString(),
                  style: TextStyle(fontSize: 50.0),
                ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextButton(
                  onPressed: () {
                    _randomNumber();
                  },
                  child: Text(
                    'play',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    padding: EdgeInsets.fromLTRB(150.0, 15.0, 150.0, 15.0),
                    foregroundColor: Colors.white,
                    backgroundColor: greenButton,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _randomNumber() {
    final random = Random();
    final number = random.nextInt(11);

    setState(() {
      raffle = number;
    });
  }
}
