import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  XylophoneApp({super.key});

  var audioFile1 = ('note1.wav');
  var audioFile2 = ('note2.wav');
  var audioFile3 = ('note3.wav');
  var audioFile4 = ('note4.wav');
  var audioFile5 = ('note5.wav');
  var audioFile6 = ('note6.wav');
  var audioFile7 = ('note7.wav');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(audioFile1));
                },
                child: Container(
                  width: 80.0,
                  height: 40.0,
                  color: Colors.red,
                ),
              ),
              TextButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(audioFile2));
                },
                child: Container(
                  width: 80.0,
                  height: 40.0,
                  color: Colors.orange,
                ),
              ),
              TextButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(audioFile3));
                },
                child: Container(
                  width: 80.0,
                  height: 40.0,
                  color: Colors.yellow,
                ),
              ),
              TextButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(audioFile4));
                },
                child: Container(
                  width: 80.0,
                  height: 40.0,
                  color: Colors.green,
                ),
              ),
              TextButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(audioFile5));
                },
                child: Container(
                  width: 80.0,
                  height: 40.0,
                  color: Colors.green.shade800,
                ),
              ),
              TextButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(audioFile6));
                },
                child: Container(
                  width: 80.0,
                  height: 40.0,
                  color: Colors.blue,
                ),
              ),
              TextButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(audioFile7));
                },
                child: Container(
                  width: 80.0,
                  height: 40.0,
                  color: Colors.purple,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
