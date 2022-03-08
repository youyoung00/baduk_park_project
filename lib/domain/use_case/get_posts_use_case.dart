import 'package:baduk_park/domain/repository/contents_api_repository.dart';

import '../../data/data_source/api/result.dart';
import '../model/post.dart';

class GetPostsUseCase {
  final ContentsApiRepository repository;

  GetPostsUseCase(this.repository);

  Future<Result<List<Post>>> call() async {
    final result = await repository.fetch();

    return result.when(success: (posts) {
      return Result.success(posts);
    }, error: (message) {
      return Result.error(message);
    });
  }
}
