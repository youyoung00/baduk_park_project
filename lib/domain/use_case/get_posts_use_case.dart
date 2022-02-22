import 'package:baduk_park/domain/repository/contents_api_repository.dart';

import 'data/post_data.dart';

class GetPostsUseCase {
  final ContentsApiRepository repository;

  GetPostsUseCase(this.repository);

  Future<List<PostData>> call() async {
    final result = await repository.fetch();
    final postDataList = result.map((e) => PostData.fromJson(e)).toList();

    postDataList.sort((a, b) => b.timestamp.compareTo(a.timestamp));

    return postDataList;
  }
}
