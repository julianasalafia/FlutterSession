import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> quotes = [
    'Growth is painful. Change is painful. But nothing is as painful as being stuck in a place you don\’t belong.',
    'I don\’t want you to save me. I want you to stay by my side while I save myself.',
    'Hope is the only thing stronger than fear.',
    'Let yourself be destroyed. Let it open you. Start there.',
    'I will find strength in pain.',
    'Never apologize for being sensitive or emotional.',
    'You received this life because you are strong enough to live it.',
    'I am not what happened to me. I am what I chose to become.',
    'Forget your past, forgive yourself and start again right now.',
    'Whenever you\’re in doubt about how far you can go, remember how far you’ve come.',
    'Remember all you\’ve faced, all the battles you\’ve won, and all the fears you\’ve overcome.',
    'Don\’t let the behavior of others destroy your inner peace.',
    'Smile and tell everyone that you are much stronger today than you were yesterday.',
    'I\’m strong because I know my weaknesses. I am beautiful because I am aware of my flaws. I\’m fearless…',
    'Believe in yourself a little more.',
    'Wake up with determination. Go to bed with satisfaction.',
    'Go ahead, tell me I\’m not good enough Tell me I can\’t do this cause I\’ll show you I can!',
    'Don\’t judge you don\’t know what storm I asked her to walk down the gutter.',
    'Once you start to see value in her, you\’ll find it harder to be around people who don\’t.',
    'The woman who doesn\’t demand validation from anyone is the most feared person on the planet.',
    'Let this be a sign that you have a big heart and are not afraid to let others see this. Showing your emotions is a sign of strength.',
    'Being deeply loved gives you strength; loving deeply gives you courage.',
    'Sometimes you face difficulties not because you are doing something wrong, but because you are doing the right thing.',
    'Work for a cause, not applause. Live Life to express, not impress.',
    'Don\’t strive to make your presence noticed, just make your absence felt.',
    'The strongest actions for a woman are to love herself, be herself, and shine among those who never believed she could.'
  ];
  String titleButton = 'Generate';
  int? currentIndex;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Image(
                    image: AssetImage('assets/images/logo.png'),
                  ),
                ),
                SizedBox(height: 50.0),
                if (currentIndex == null)
                  Expanded(
                    child: Container(),
                  ),
                if (currentIndex != null)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        quotes[currentIndex!],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Gloria-regular',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                Expanded(
                  child: Image(
                    image: AssetImage('assets/images/illustration.png'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _randomQuote();
                  },
                  child: Text(
                    titleButton,
                    style: TextStyle(
                      fontFamily: 'Gloria-regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    padding: EdgeInsets.fromLTRB(80.0, 15.0, 80.0, 15.0),
                    foregroundColor: Colors.lightBlueAccent,
                    backgroundColor: Colors.white,
                  ),
                ),
                SizedBox(height: 50.0),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _randomQuote() {
    final random = Random();
    final index = random.nextInt(quotes.length);

    setState(() {
      currentIndex = index;
    });
  }
}
