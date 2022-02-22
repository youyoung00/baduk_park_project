import 'package:baduk_park/domain/model/post.dart';
import 'package:baduk_park/domain/repository/contents_api_repository.dart';

import '../data_source/remote/post_remote_data_source.dart';

class PostRemoteRepositoryImpl implements ContentsApiRepository {
  PostApi api;

  PostRemoteRepositoryImpl(this.api);

  @override
  Future<List<Post>> fetch() async {
    final result = await api.fetch();
    // if (result.isNotEmpty) {
    return result.map((e) => Post.fromJson(e)).toList();
    // } else {
    //   throw throw Exception('Failed to load');
    // }
  }
}
