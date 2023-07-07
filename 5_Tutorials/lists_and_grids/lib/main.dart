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
  final _users = List.filled(21, 'name');

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
              _contentGridView(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _contentListView() {
    return ListView.builder(
      itemCount: _users.length,
      itemBuilder: (context, index) => Card(
        child: ListTile(
          title: Text(_users[index].toString()),
          onTap: () => print('hello $index'),
        ),
      ),
    );
  }

  Widget _contentGridView() {
    return GridView.builder(
        itemCount: _users.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) => Card(
              child: Center(
                child: GridTile(
                    child: Text(
                  _users[index],
                )),
              ),
            ));
  }
}
