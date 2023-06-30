import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _imagePaths = [
    'images/image01.jpg',
    'images/image02.jpg',
    'images/image03.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                height: 500.0,
              ),
              items: _imagePaths.map((imagePath) {
                return Builder(
                  builder: (context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        child: Image.asset(imagePath));
                  },
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
