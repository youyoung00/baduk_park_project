import '../../data/data_source/remote/result.dart';
import '../model/post.dart';

abstract class ContentsApiRepository {
  Future<Result<List<Post>>> fetch();
}
