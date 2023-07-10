import 'package:easy_read/constants.dart';
import 'package:easy_read/screen/page_input.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
      home: const PageInput(),
    );
  }
}
