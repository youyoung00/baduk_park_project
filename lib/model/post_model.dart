class PostPageListModel {
  final List<PostPageModel> postPageListModel;

  PostPageListModel({
    required this.postPageListModel,
  });
}

class PostPageModel {
  final List<PostModel> postModelList;

  PostPageModel({
    required this.postModelList,
  });
}

class PostModel {
  final String keyword;
  final String title;
  final String userName;
  final DateTime inputTime;
  final int commentCount;

  PostModel({
    required this.keyword,
    required this.title,
    required this.userName,
    required this.inputTime,
    required this.commentCount,
  });
}
