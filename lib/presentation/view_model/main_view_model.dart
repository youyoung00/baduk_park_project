import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../data/data_source/api/result.dart';
import '../../domain/model/post.dart';
import '../../domain/use_case/get_posts_use_case.dart';
import '../screen/main_state.dart';

class MainViewModel with ChangeNotifier {
  bool isLogin = false;

  MainState _state = MainState([], false);

  MainState get state => _state;

  final GetPostsUseCase repository;

  MainViewModel(
    this.repository,
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
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final Result<List<Post>> result = await repository.call();

    result.when(
      success: (posts) {
        _state = state.copyWith(posts: posts);
        notifyListeners();
      },
      error: (message) {
        notifyListeners();
      },
    );
    _state = state.copyWith(isLoading: false);
    notifyListeners();
  }
}
