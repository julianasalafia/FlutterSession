import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp(
    url: 'https://julianasalafia.github.io/',
  ));
}

class MyApp extends StatefulWidget {
  final String url;

  MyApp({required this.url});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  WebViewController? controller;

  @override
  void initState() {
    super.initState();

    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          elevation: 0,
        ),
        body: WebViewWidget(controller: controller!),
        bottomNavigationBar: Container(
          color: Colors.black12,
          child: Padding(
            padding: EdgeInsets.only(bottom: 20.0, right: 20.0),
            child: ButtonBar(
              children: [
                navigationButton(Icons.chevron_left, () async {
                  if (await controller!.canGoBack()) {
                    controller!.goBack();
                  }
                }),
                navigationButton(Icons.chevron_right, () async {
                  if (await controller!.canGoForward()) {
                    controller!.goForward();
                  }
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget navigationButton(IconData icon, Function() onPressed) {
    return IconButton(
        icon: Icon(
          icon,
          color: Colors.black54,
        ),
        onPressed: onPressed);
  }
}
