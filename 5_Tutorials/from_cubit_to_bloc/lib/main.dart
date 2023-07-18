import 'package:from_cubit_to_bloc/app_navigator.dart';
import 'package:from_cubit_to_bloc/nav_cubit.dart';

import 'posts_cubit.dart';
import 'posts_view.dart';
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
        home: MultiBlocProvider(providers: [
      BlocProvider(create: (context) => NavCubit()),
      BlocProvider(
        create: (context) => PostsBloc()..add(LoadPostsEvent()),
      ),
    ], child: AppNavigator()));
  }
}
