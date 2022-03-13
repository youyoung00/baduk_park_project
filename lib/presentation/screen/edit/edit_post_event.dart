import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_post_event.freezed.dart';

@freezed
class EditPostEvent<T> with _$EditPostEvent<T> {
  const factory EditPostEvent.savePost(
    int? id,
    String boardName,
    String title,
    String content,
    DateTime createdAt,
    int memberId,
    int viewCount,
    String emailName,
    int commentCount,
  ) = SavePost;
}
