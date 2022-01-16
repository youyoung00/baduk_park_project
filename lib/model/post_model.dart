class PostPageListModel {
  final PostPageModel postPageListModel1;
  final PostPageModel postPageListModel2;
  final PostPageModel postPageListModel3;
  final PostPageModel postPageListModel4;
  final PostPageModel postPageListModel5;

  PostPageListModel({
    required this.postPageListModel1,
    required this.postPageListModel2,
    required this.postPageListModel3,
    required this.postPageListModel4,
    required this.postPageListModel5,
  });
}

class PostPageModel {
  final PostModel postModelList1;
  final PostModel postModelList2;
  final PostModel postModelList3;
  final PostModel postModelList4;
  final PostModel postModelList5;
  final PostModel postModelList6;
  final PostModel postModelList7;
  final PostModel postModelList8;
  final PostModel postModelList9;
  final PostModel postModelList10;

  PostPageModel({
    required this.postModelList1,
    required this.postModelList2,
    required this.postModelList3,
    required this.postModelList4,
    required this.postModelList5,
    required this.postModelList6,
    required this.postModelList7,
    required this.postModelList8,
    required this.postModelList9,
    required this.postModelList10,
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
