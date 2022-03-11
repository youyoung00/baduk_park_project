import 'package:baduk_park/domain/use_case/get_post_use_case.dart';
import 'package:baduk_park/domain/use_case/get_posts_use_case.dart';
import 'package:baduk_park/domain/use_case/update_post_use_case.dart';

import 'add_post_use_case.dart';
import 'delete_post_use_case.dart';

class UseCases {
  final AddPostUseCase addPost;
  final DeletePostUseCase deletePost;
  final GetPostUseCase getPost;
  final GetPostsUseCase getPosts;
  final UpdatePostUseCase updatePost;

  UseCases({
    required this.addPost,
    required this.deletePost,
    required this.getPost,
    required this.getPosts,
    required this.updatePost,
  });
}
