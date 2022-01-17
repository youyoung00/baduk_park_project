class PostModel {
  PostModel({
    required this.id,
    required this.name,
    required this.keyword,
    required this.comment,
    required this.title,
    required this.inputTime,
    required this.contents,
  });

  late final String id;
  late final String name;
  late final String keyword;
  late final String comment;
  late final String title;
  late final String inputTime;
  late final String contents;

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['_id'],
      name: json['_name'],
      keyword: json['keyword'],
      comment: json['COMMENT'],
      title: json['title'],
      inputTime: json['inputTime'],
      contents: json['Contents'],
    );
  }

  static List<PostModel> listToMoves(List jsonList) {
    return jsonList.map((e) => PostModel.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = id;
    _data['_name'] = name;
    _data['keyword'] = keyword;
    _data['COMMENT'] = comment;
    _data['title'] = title;
    _data['inputTime'] = inputTime;
    _data['Contents'] = contents;
    return _data;
  }
}
