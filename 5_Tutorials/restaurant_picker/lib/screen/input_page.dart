import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:restaurant_picker/constants.dart';
import 'dart:math';
import 'restaurants.dart';

const String title = 'what should i eat?';
const String buttonText = 'discover';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  List<Restaurant> restaurants = [
    Restaurant('mexican food', Icons.takeout_dining),
    Restaurant('breakfast', Icons.breakfast_dining),
    Restaurant('snacks', Icons.cookie),
    Restaurant('hamburger', Icons.lunch_dining),
    Restaurant('popcorn', Icons.microwave),
    Restaurant('chinese', Icons.rice_bowl),
    Restaurant('fast food', Icons.fastfood),
    Restaurant('pizza', Icons.local_pizza),
    Restaurant('poke bowl', Icons.ramen_dining),
    Restaurant('spaghetti', Icons.dinner_dining),
  ];

  int? currentIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 150.0, bottom: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AnimatedTextKit(repeatForever: false, animatedTexts: [
                TypewriterAnimatedText(title,
                    textStyle: kColorizeTextStyle,
                    speed: const Duration(milliseconds: 60)),
              ]),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10.0),
                    if (currentIndex != null)
                      Icon(
                        restaurants[currentIndex!].icon,
                        size: 50.0,
                        color: kTextColor,
                      ),
                    const SizedBox(height: 10.0),
                    if (currentIndex != null)
                      Text(
                        restaurants[currentIndex!].name.toUpperCase(),
                        style: kColorizeTextStyle,
                      ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: kTextColor.withOpacity(0.08),
                    spreadRadius: 2,
                    blurRadius: 3.0,
                    offset: const Offset(0, 0),
                  ),
                ]),
                child: TextButton(
                    onPressed: () {
                      updateIndex();
                    },
                    style: TextButton.styleFrom(
                        side: const BorderSide(color: kTextColor, width: 1.0)),
                    child: const Text(
                      buttonText,
                      style: kColorizeTextStyle,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void updateIndex() {
    final random = Random();
    final index = random.nextInt(restaurants.length);
    setState(() => currentIndex = index);
  }
}
