import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

Map<String, Color> getColorMap() {
  return {
    'red': Colors.red,
    'orange': Colors.orange,
    'yellow': Colors.yellow,
    'green': Colors.green,
    'green.shade800': Colors.green.shade800,
    'blue': Colors.blue,
    'purple': Colors.purple,
  };
}

class XylophoneApp extends StatelessWidget {
  XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey(String colorName, int soundNumber) {
    Map<String, Color> colorMap = getColorMap();

    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Container(
          color: colorMap[colorName],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              buildKey('red', 1),
              buildKey('orange', 2),
              buildKey('yellow', 3),
              buildKey('green', 4),
              buildKey('green.shade800', 5),
              buildKey('blue', 6),
              buildKey('purple', 7),
            ],
          ),
        ),
      ),
    );
  }
}
