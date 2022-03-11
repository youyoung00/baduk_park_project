import '../../data/data_source/api/result.dart';
import '../model/post.dart';

abstract class ContentsApiRepository {
  Future<Result<List<Post>>> fetch();
  // Future<BannerAd> loadStaticBannerAd();

  Future<List<Post>> getPosts();

  Future<Post?> getPostById(int id);

  Future<void> insertPost(Post post);

  Future<void> updatePost(Post post);

  Future<void> deletePost(Post post);
}
