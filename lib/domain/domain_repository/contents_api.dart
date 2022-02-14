import 'package:baduk_park/domain/domain_model/post_model.dart';

abstract class ContentsApi {
  Future<List<PostModel>> fetchPosts();
}
