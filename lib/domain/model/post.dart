import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  const factory Post({
    @JsonKey(name: '_id') required String id,
    required String title,
    required String name,
    @JsonKey(name: 'member_id') required String memberId,
    @JsonKey(name: 'view_count') required String viewCount,
    required String content,
    @JsonKey(name: 'create_time') required String createTime,
    @JsonKey(name: 'comment_count') required String commentCount,
    @JsonKey(name: 'board_num') required String boardNum,
    @JsonKey(name: 'status') required String postStatus,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
