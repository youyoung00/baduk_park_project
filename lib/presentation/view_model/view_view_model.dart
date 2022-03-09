import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../domain/use_case/get_static_banner_ad_use_case.dart';

class ViewViewModel with ChangeNotifier {
  bool _isLogin = false;
  bool _isStaticBannerLoaded = false;

  bool get isLogin => _isLogin;
  bool get isStaticBannerLoaded => _isStaticBannerLoaded;

  final GetStaticBannerAdUseCase staticBannerRepository;

  ViewViewModel(this.staticBannerRepository) {
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
    staticBannerRepository.call(
      staticAdLoaded: _isStaticBannerLoaded,
    );
    notifyListeners();
  }
}
