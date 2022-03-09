import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../core/security area/keys/api_key.dart';

class GetStaticBannerAdUseCase {
  final AdRequest adRequest;
  late BannerAd staticAd;
  // bool staticAdLoaded = false;

  GetStaticBannerAdUseCase(this.adRequest);

  Future<void> call({required bool staticAdLoaded}) async {
    // void loadStaticBannerAd() {
    staticAd = BannerAd(
      // adUnitId: 'ca-app-pub-3940256099942544~3347511713',
      adUnitId: Keys.adKey,
      size: AdSize.banner,
      request: adRequest,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          // setState(() {
          staticAdLoaded = true;
          // });
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
          print('ad failed to load ${error.message}');
        },
      ),
    );

    staticAd.load();
  }
  // final result = repository.loadStaticBannerAd();
  // }
}
