import 'package:flutter/material.dart';

const kTextColor = Color(0xFF149414);

const kTextFontColor = TextStyle(
  fontFamily: 'Courier',
  color: kTextColor,
);

const kColorizeTextStyle = TextStyle(
    fontSize: 18.0,
    fontFamily: 'Courier',
    color: kTextColor,
    shadows: [
      Shadow(
        blurRadius: 4.0,
        color: kTextColor,
        offset: Offset(0, 0),
      ),
    ]);
