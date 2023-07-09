import 'package:flutter/material.dart';
import 'package:restaurant_picker/screen/input_page.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
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
      theme: ThemeData.dark().copyWith(
        primaryColor: kTextColor,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: InputPage(),
    );
  }
}
