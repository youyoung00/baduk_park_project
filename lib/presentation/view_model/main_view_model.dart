import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../domain/model/post.dart';
import '../../domain/repository/contents_api_repository.dart';

class MainViewModel with ChangeNotifier {
  bool isLogin = false;

  List<Post> postList = [];

  // final GetPostsUseCase repository;
  final ContentsApiRepository _api;

  MainViewModel(
    this._api,
  ) {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        isLogin = false;
      } else {
        isLogin = true;
      }
      notifyListeners();
    });
  }

  Future<void> fetchPost() async {
    postList = await _api.fetch();
    notifyListeners();
  }
}
