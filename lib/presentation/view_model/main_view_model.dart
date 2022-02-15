import 'package:baduk_park/domain/domain_model/post_model.dart';
import 'package:baduk_park/domain/domain_repository/contents_api.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainViewModel with ChangeNotifier {
  bool isLogin = false;

  List<PostModel> postList = [];

  final ContentsApi _api;

  MainViewModel(this._api) {
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
    postList = await _api.fetchPosts();
    notifyListeners();
  }
}
