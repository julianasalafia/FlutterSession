import 'dart:math';

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
  List<String> resposta = [
    'to apaixonada cara',
    'eu sou uma piada',
    'se eu forçar eu consigo uma mommy',
    'semana ta punk galera',
    'eu nasci pra passar vergonha nao eh possivel',
    'eu vou ser feliz sozinha',
    'tenho pena de quem nao vai ver minha bunda hoje',
    'ANIMADA ANIMADA ANIMADA',
    'vai responder story na puta q pariu',
    'nao é que eu nao sei perder, é que eu prefiro ganhar',
    'queria ******** * ***** ****** ****',
    'essa treta virou uma festa',
  ];

  int? currentIndex;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          elevation: 0,
          title: Text(
            'luaninha generator',
            style: TextStyle(color: Colors.black54),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (currentIndex != null) Text(resposta[currentIndex!]),
              TextButton(
                onPressed: () {
                  updateIndex();
                },
                child: Text('gerar frase'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void updateIndex() {
    final random = Random();
    final index = random.nextInt(resposta.length);
    setState(() {
      currentIndex = index;
    });
  }
}
