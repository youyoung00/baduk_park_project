import 'package:baduk_park/domain/model/post.dart';

import '../repository/contents_api_repository.dart';

class UpdatePostUseCase {
  final ContentsApiRepository repository;

  UpdatePostUseCase(this.repository);

  Future<void> call(Post post) async {
    await repository.updatePost(post);
  }
}
