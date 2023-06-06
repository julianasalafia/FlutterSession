import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(BallPage());
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          titleTextStyle: TextStyle(
            color: Colors.white,
          ),
          title: Text('Ask me anything'),
          backgroundColor: Colors.blue[900],
          centerTitle: true,
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int randomNumber = 0;

  void changeRandomNumber() {
    setState(() {
      randomNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: TextButton(
          onPressed: () {
            changeRandomNumber();
            print('I got clicked! Number: $randomNumber.');
          },
          child: Image(
            image: AssetImage('images/ball$randomNumber.png'),
          ),
        ),
      ),
    );
  }
}
