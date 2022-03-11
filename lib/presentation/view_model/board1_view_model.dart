import 'package:baduk_park/domain/use_case/get_static_banner_ad_use_case.dart';
import 'package:baduk_park/presentation/screen/board1/board1_event.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../data/data_source/api/result.dart';
import '../../domain/model/post.dart';
import '../../domain/use_case/get_inline_banner_ad_use_case.dart';
import '../../domain/use_case/use_cases.dart';
import '../screen/main_state.dart';

class Board1ViewModel with ChangeNotifier {
  bool _isLogin = false;
  bool _isStaticBannerLoaded = false;
  bool _isInlineBannerLoaded = false;

  bool get isInlineBannerLoaded => _isInlineBannerLoaded;

  bool get isStaticBannerLoaded => _isStaticBannerLoaded;

  bool get isLogin => _isLogin;

  MainState _state = MainState([], false);

  MainState get state => _state;

  final UseCases useCases;
  final GetStaticBannerAdUseCase staticBannerRepository;
  final GetInlineBannerAdUseCase inlineBannerRepository;

  Board1ViewModel(
    this.useCases,
    this.staticBannerRepository,
    this.inlineBannerRepository,
  ) {
    FirebaseAuth.instance.authStateChanges().listen(
      (User? user) {
        if (user == null) {
          _isLogin = false;
        } else {
          _isLogin = true;
        }
        notifyListeners();
      },
    );
  }

  Future<void> loadStaticBanner() async {
    _isStaticBannerLoaded = true;
    notifyListeners();
    staticBannerRepository.call(staticAdLoaded: _isStaticBannerLoaded);
    notifyListeners();
  }

  Future<void> loadInlineBanner() async {
    _isInlineBannerLoaded = true;
    notifyListeners();
    inlineBannerRepository.call(inlineAdLoaded: _isInlineBannerLoaded);
    notifyListeners();
  }

  void onEvent(Board1Event event) {
    event.when(
      loadPosts: _loadPosts,
    );
    // _loadNotes();
    notifyListeners();
  }

  Future<void> _loadPosts() async {
    Result<List<Post>> posts = await useCases.getPosts();
    posts.when(
      success: (posts) {
        _state = state.copyWith(posts: posts);
        notifyListeners();
      },
      error: (message) {
        Result.error(message);
        notifyListeners();
      },
    );
  }

  Future<void> fetchPost() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final Result<List<Post>> result = await useCases.getPosts.call();

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
