import 'package:flutter/material.dart';

class NomesPage extends StatefulWidget {
  final List<String> nomes;
  const NomesPage({Key? key, required this.nomes}) : super(key: key);

  @override
  State<NomesPage> createState() => _NomesPageState();
}

class _NomesPageState extends State<NomesPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('nomes: '),
              Expanded(
                child: ListView.builder(
                    itemCount: widget.nomes.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(widget.nomes[index]),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
