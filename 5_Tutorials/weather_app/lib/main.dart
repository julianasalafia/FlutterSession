import 'package:flutter/material.dart';
import 'package:weather_app/models.dart';

import 'data_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _cityTextController = TextEditingController();
  final _dataService = DataService();

  late WeatherResponse _response;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 50),
                child: SizedBox(
                  width: 150,
                  child: TextField(
                    controller: _cityTextController,
                    decoration: InputDecoration(labelText: 'City'),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              ElevatedButton(onPressed: _search, child: Text('Search'))
            ],
          ),
        ),
      ),
    );
  }

  void _search() async {
    final response = await _dataService.getWeather(_cityTextController.text);
    setState(() => _response = response);
  }
}
