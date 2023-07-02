import 'package:flutter/material.dart';
import 'package:tic_tac_toe/board_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child:
              Stack(children: [Image.asset('images/board.png'), _boardTiles()]),
        ),
      ),
    );
  }

  Widget _boardTiles() {
    return Builder(builder: (context) {
      final boardDimension = MediaQuery.of(context).size.width;
      final tileDimension = boardDimension / 3;

      return Container(
        width: boardDimension,
        height: boardDimension,
        child: Column(
          children: [
            Row(children: [
              BoardTile(dimension: tileDimension),
              BoardTile(dimension: tileDimension),
              BoardTile(dimension: tileDimension),
            ]),
            Row(children: [
              BoardTile(dimension: tileDimension),
              BoardTile(dimension: tileDimension),
              BoardTile(dimension: tileDimension),
            ]),
            Row(children: [
              BoardTile(dimension: tileDimension),
              BoardTile(dimension: tileDimension),
              BoardTile(dimension: tileDimension),
            ]),
          ],
        ),
      );
    });
  }
}
