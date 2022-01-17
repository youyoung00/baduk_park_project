import 'package:baduk_park/model/post_model.dart';

abstract class ContentsApi {
  Future<List<PostModel>> fetchPosts();
}
