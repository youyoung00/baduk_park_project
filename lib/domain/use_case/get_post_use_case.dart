import 'package:baduk_park/domain/model/post.dart';
import 'package:baduk_park/domain/repository/contents_api_repository.dart';

class GetPostUseCase {
  final ContentsApiRepository repository;

  GetPostUseCase(this.repository);

  Future<Post?> call(int id) async {
    // return await repository.getNoteById(id);
  }
}
