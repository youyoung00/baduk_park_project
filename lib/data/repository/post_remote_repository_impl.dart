import 'package:baduk_park/domain/repository/contents_api_repository.dart';

import '../../domain/model/post.dart';
import '../data_source/api/post_api_data_source.dart';
import '../data_source/api/result.dart';

class BoardApiRepositoryImpl implements ContentsApiRepository {
  PostApi postApi;

  BoardApiRepositoryImpl(
    this.postApi,
  );

  @override
  Future<Result<List<Post>>> fetch() async {
    final Result<Iterable> result = await postApi.fetch();

    return result.when(
      success: (iterable) {
        return Result.success(
          iterable.map((e) => Post.fromJson(e)).toList(),
        );
      },
      error: (message) {
        return Result.error(message);
      },
    );
  }

  @override
  Future<void> updatePost(Post post) async {
    await updatePost(post);
  }

  @override
  Future<void> deletePost(Post post) async {
    await deletePost(post);
  }

  @override
  Future<Post?> getPostById(int id) async {
    return await getPostById(id);
  }

  @override
  Future<List<Post>> getPosts() async {
    return await getPosts();
  }

  @override
  Future<void> insertPost(Post post) async {
    await insertPost(post);
  }
}
