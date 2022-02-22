import 'package:baduk_park/domain/model/post.dart';

abstract class ContentsApiRepository {
  Future<List<Post>> fetch();
}
