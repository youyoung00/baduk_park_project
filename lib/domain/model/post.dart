class Post {
  Post({
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

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['_id'],
      name: json['_name'],
      keyword: json['keyword'],
      comment: json['COMMENT'],
      title: json['title'],
      timestamp: json['inputTime'],
      contents: json['Contents'],
    );
  }

  static List<Post> listToMoves(List jsonList) {
    return jsonList.map((e) => Post.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = id;
    _data['_name'] = name;
    _data['keyword'] = keyword;
    _data['COMMENT'] = comment;
    _data['title'] = title;
    _data['inputTime'] = timestamp;
    _data['Contents'] = contents;
    return _data;
  }

  @override
  String toString() {
    return 'Post{id: $id, name: $name, keyword: $keyword, comment: $comment, title: $title, timestamp: $timestamp, contents: $contents}';
  }
}
