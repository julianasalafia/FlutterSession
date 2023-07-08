import 'package:flutter/material.dart';

const kTextColor = Color(0xFF149414);
const kText2Color = Color(0xFF2b5329);

const kColorizeTextStyle = TextStyle(
    fontSize: 18.0,
    fontFamily: 'Courier',
    color: kTextColor,
    shadows: [
      Shadow(
        blurRadius: 3.0,
        color: kTextColor,
        offset: Offset(0, 0),
      ),
    ]);
