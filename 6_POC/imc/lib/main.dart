import 'package:flutter/material.dart';
import 'package:imc/nomes_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final nomeController = TextEditingController();
  List<String> nomes = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('escreva o nome:'),
                TextField(controller: nomeController),
                const SizedBox(height: 20.0),
                TextButton(
                  onPressed: () {
                    setState(() {
                      nomes.add(nomeController.text);
                    });

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NomesPage(nomes: nomes)));
                  },
                  child: const Text('adicionar a lista'),
                ),
                const SizedBox(height: 20.0),
                Text(
                  nomes.toString(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
