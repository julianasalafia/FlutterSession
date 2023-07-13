import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:picture_carousel/constants.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
    required List<String> imagePaths,
  }) : _imagePaths = imagePaths;

  final List<String> _imagePaths;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  return Stack(
                    children: [
                      Image.asset(imagePath),
                      Positioned.fill(
                        child: Container(
                          decoration: kBoxDecoration,
                          width: MediaQuery.of(context).size.width,
                        ),
                      ),
                    ],
                  );
                },
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
