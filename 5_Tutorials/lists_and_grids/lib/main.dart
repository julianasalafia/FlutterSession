import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white70,
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Text('List'),
                Text('Grid'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              _contentListView(),
              Text('grid content'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _contentListView() {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) => Card(
        child: ListTile(
          title: Text(index.toString()),
        ),
      ),
    );
  }
}
