import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: Text('0xFF1493'),
        ),
        bottomNavigationBar: Container(
          color: Theme.of(context).colorScheme.secondary,
          child: Padding(
            padding: EdgeInsets.only(bottom: 20.0, right: 20.0),
            child: ButtonBar(
              children: [
                navigationButton(Icons.chevron_left, () {}),
                navigationButton(Icons.chevron_right, () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget navigationButton(IconData icon, Function() onPressed) {
    return IconButton(icon: Icon(icon), onPressed: onPressed);
  }
}
