import 'package:baduk_park/model/post_model.dart';
import 'package:baduk_park/repository/contents_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PostViewModelData with ChangeNotifier {
  List<PostModel> postList = [];

  final ContentsApi _api;

  PostViewModelData(this._api);

  Future<void> fetchPost() async {
    postList = await _api.fetchPosts();
    notifyListeners();
  }
}
