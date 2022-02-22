import 'package:baduk_park/domain/model/post.dart';

class PostData {
  PostData({
    required this.id,
    required this.name,
    required this.keyword,
    required this.comment,
    required this.title,
    required this.timestamp,
    required this.contents,
  });

  late final String id;
  late final String name;
  late final String keyword;
  late final String comment;
  late final String title;
  late final String timestamp;
  late final String contents;

  factory PostData.fromJson(Post post) {
    return PostData(
      id: post.id,
      name: post.name,
      keyword: post.keyword,
      comment: post.comment,
      title: post.title,
      timestamp: post.timestamp,
      contents: post.contents,
    );
  }

  // PostData toJson() {
  //   final _data = <String, dynamic>{};
  //   _data['_id'] = id;
  //   _data['_name'] = name;
  //   _data['keyword'] = keyword;
  //   _data['COMMENT'] = comment;
  //   _data['title'] = title;
  //   _data['inputTime'] = timestamp;
  //   _data['Contents'] = contents;
  //   return _data;
  // }
}
