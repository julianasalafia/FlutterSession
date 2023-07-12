import 'package:flutter/material.dart';

const kTextColor = Color(0xFF149414);
const kText2Color = Color(0x740B4D0B);
const fontSize = 18.0;

const kColorizeTextStyle = TextStyle(
    fontSize: fontSize,
    fontFamily: 'Courier',
    color: kTextColor,
    shadows: [
      Shadow(
        blurRadius: 10.0,
        color: kTextColor,
        offset: Offset(0, 0),
      ),
    ]);
