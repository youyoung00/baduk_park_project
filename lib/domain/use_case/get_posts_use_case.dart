import 'package:baduk_park/domain/repository/contents_api_repository.dart';

import '../../data/data_source/remote/result.dart';
import '../model/post.dart';

class GetPostsUseCase {
  final ContentsApiRepository repository;

  GetPostsUseCase(this.repository);

  Future<Result<List<Post>>> call() async {
    final result = await repository.fetch();

    return result.when(success: (posts) {
      print('유즈케이스 확인 : $posts');
      return Result.success(posts);
      // return Result.success(posts.sort((a, b) => b.compareTo(a.createTime)));
    }, error: (message) {
      return Result.error(message);
    });
  }
}
