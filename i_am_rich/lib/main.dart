import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          centerTitle: true,
          title: Text('I am Rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
                'https://www.freecodecamp.org/news/content/images/size/w1000/2022/09/jonatan-pie-3l3RwQdHRHg-unsplash.jpg'),
          ),
        ),
      ),
    ),
  );
}
