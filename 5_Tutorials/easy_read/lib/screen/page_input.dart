import 'package:flutter/material.dart';
import 'package:easy_read/constants.dart';

class PageInput extends StatefulWidget {
  const PageInput({super.key});

  @override
  State<PageInput> createState() => _PageInputState();
}

class _PageInputState extends State<PageInput> {
  double _fontSize = fontSize;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: TextField(
                textInputAction: TextInputAction.done,
                style: kColorizeTextStyle.copyWith(
                  fontSize: _fontSize,
                ),
                maxLines: null,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: kTextColor),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: kText2Color),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: kTextColor.withOpacity(0.08),
                    spreadRadius: 1,
                    blurRadius: 50.0,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  thumbColor: kTextColor,
                  activeTrackColor: kTextColor,
                  inactiveTrackColor: kText2Color,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
                ),
                child: Slider(
                  value: _fontSize,
                  onChanged: (newSize) {
                    setState(() => _fontSize = newSize);
                  },
                  min: 30,
                  max: 200,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
