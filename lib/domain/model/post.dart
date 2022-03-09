import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  factory Post({
    @JsonKey(name: '_id') required int id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'content') required String content,
    @JsonKey(name: 'board_name') required String boardName,
    @JsonKey(name: 'view_count') required int viewCount,
    @JsonKey(name: 'member_id') required int memberId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'comment_count') required int commentCount,
    @JsonKey(name: 'email_name') required String emailName,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
