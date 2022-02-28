import 'package:baduk_park/domain/repository/contents_api_repository.dart';

import '../../domain/model/post.dart';
import '../data_source/remote/post_remote_data_source.dart';
import '../data_source/remote/result.dart';

class PostRemoteRepositoryImpl implements ContentsApiRepository {
  PostApi api;

  PostRemoteRepositoryImpl(this.api);

  @override
  Future<Result<List<Post>>> fetch() async {
    final Result<Iterable> result = await api.fetch();

    return result.when(
      success: (iterable) {
        return Result.success(iterable.map((e) => Post.fromJson(e)).toList());
      },
      error: (message) {
        return Result.error(message);
      },
    );
  }
}
