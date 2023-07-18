import 'package:flutter/material.dart';
import 'package:from_cubit_to_bloc/post.dart';

class PostsDetailsView extends StatelessWidget {
  final Post post;

  const PostsDetailsView({required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.title),
      ),
      body: Center(
        child: Text(post.body),
      ),
    );
  }
}
