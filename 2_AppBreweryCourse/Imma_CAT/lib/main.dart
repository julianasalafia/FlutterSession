import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          elevation: 0,
          title: const Text('this is a real cat'),
          centerTitle: true,
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image(
                  image: AssetImage('assets/images/i_am_cat.png'),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Hello! \nImma real cat.',
                style: TextStyle(
                    fontFamily: 'Exo2', fontSize: 24, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
