import 'package:baduk_park/domain/model/post.dart';
import 'package:baduk_park/domain/repository/contents_api_repository.dart';

class DeletePostUseCase {
  final ContentsApiRepository repository;

  DeletePostUseCase(this.repository);

  Future<void> call(Post post) async {
    // await repository.deleteNote(note);
  }
}
