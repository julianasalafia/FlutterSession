import 'package:flutter/material.dart';

class BoardTile extends StatelessWidget {
  final double dimension;

  const BoardTile({super.key, required this.dimension});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: dimension,
      height: dimension,
      child: TextButton(
        onPressed: () {},
        child: Image.asset('images/x.png'),
      ),
    );
  }
}
