import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:from_cubit_to_bloc/nav_cubit.dart';
import 'package:from_cubit_to_bloc/post.dart';
import 'package:from_cubit_to_bloc/post_details_view.dart';
import 'package:from_cubit_to_bloc/posts_view.dart';

class AppNavigator extends StatelessWidget {
  const AppNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavCubit, Post?>(builder: ((context, post) {
      return Navigator(
        pages: [
          MaterialPage(child: PostsView()),
          if (post != null)
            MaterialPage(
                child: PostsDetailsView(
              post: post,
            )),
        ],
        onPopPage: (route, result) {
          BlocProvider.of<NavCubit>(context).popToPosts();
          return route.didPop(result);
        },
      );
    }));
  }
}
