import 'package:flutter/material.dart';
import 'constants.dart';

class buttonContainer extends StatelessWidget {
  const buttonContainer(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.icon});

  final String? text;
  final void Function()? onPressed;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    var height = 50.0;
    return Container(
      height: height,
      decoration: kBoxDecoration,
      child: OutlinedButton.icon(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
            foregroundColor: MaterialStateProperty.all(kTextColor),
            side: MaterialStateProperty.all(BorderSide.none),
          ),
          onPressed: onPressed,
          icon: icon,
          label: Text(
            text!,
            style: kColorizeTextStyle,
          )),
    );
  }
}
