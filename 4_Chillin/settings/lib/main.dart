import 'package:flutter/material.dart';

import 'models.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _usernameController = TextEditingController();
  var _selectedGender = Gender.FEMALE;
  var _selectedLanguages = Set<ProgrammingLanguage>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('User Settings'),
        ),
        body: ListView(
          children: [
            ListTile(
              title: TextField(
                controller: _usernameController,
                decoration: InputDecoration(labelText: 'Username'),
              ),
            ),
            RadioListTile(
                title: Text('Female'),
                value: Gender.FEMALE,
                groupValue: _selectedGender,
                onChanged: (newValue) =>
                    setState(() => _selectedGender = newValue!)),
            RadioListTile(
                title: Text('Male'),
                value: Gender.MALE,
                groupValue: _selectedGender,
                onChanged: (newValue) =>
                    setState(() => _selectedGender = newValue!)),
            RadioListTile(
                title: Text('Other'),
                value: Gender.OTHER,
                groupValue: _selectedGender,
                onChanged: (newValue) =>
                    setState(() => _selectedGender = newValue!)),
            CheckboxListTile(
                title: Text('Dart'),
                value: _selectedLanguages.contains(ProgrammingLanguage.DART),
                onChanged: (_) {}),
            CheckboxListTile(
                title: Text('JavaScript'),
                value:
                    _selectedLanguages.contains(ProgrammingLanguage.JAVASCRIPT),
                onChanged: (_) {}),
            CheckboxListTile(
                title: Text('Kotlin'),
                value: _selectedLanguages.contains(ProgrammingLanguage.KOTLIN),
                onChanged: (_) {}),
            CheckboxListTile(
                title: Text('Swift'),
                value: _selectedLanguages.contains(ProgrammingLanguage.SWIFT),
                onChanged: (_) {}),
          ],
        ),
      ),
    );
  }
}
