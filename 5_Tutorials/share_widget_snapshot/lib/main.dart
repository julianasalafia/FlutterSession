import 'package:flutter/material.dart';
import 'dart:typed_data';
import 'dart:io';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _screenshotController = ScreenshotController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Screenshot(
                controller: _screenshotController,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Image.asset('images/codepassionately.png'),
                        Text(
                          'Code Passionately',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: _takeScreenshot,
                child: Text('Take Screenshot and Share'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _takeScreenshot() async {
    final image = await _screenshotController.capture();
    await saveAndShare(image!);
  }

  Future saveAndShare(Uint8List bytes) async {
    final directory = await getApplicationDocumentsDirectory();
    final image = File('${directory.path}/codepassionately.png');
    image.writeAsBytesSync(bytes);

    await Share.shareFiles([image.path], text: 'Shared from #SexyFlutterApp');
  }
}
