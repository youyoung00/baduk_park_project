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
}
