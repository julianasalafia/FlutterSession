import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:from_cubit_to_bloc/post.dart';

class NavCubit extends Cubit<Post?> {
  NavCubit() : super(null);

  void showPostDetails(Post post) => emit(post);
  void popToPosts() => emit(null);
}
