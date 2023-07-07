import 'package:bloc_and_cubit/posts_cubit.dart';
import 'package:bloc_and_cubit/posts_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        home: BlocProvider<PostsCubit>(
            create: (context) => PostsCubit()..getPosts(), child: PostsView()));
  }
}
