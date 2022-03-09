import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../core/security area/keys/api_key.dart';

class GetInlineBannerAdUseCase {
  final AdRequest adRequest;

  late BannerAd inlineAd;

  GetInlineBannerAdUseCase(this.adRequest);

  Future<void> call({required bool inlineAdLoaded}) async {
    // void loadStaticBannerAd() {
    inlineAd = BannerAd(
      // adUnitId: 'ca-app-pub-3940256099942544~3347511713',
      adUnitId: Keys.adKey,
      size: AdSize.banner,
      request: adRequest,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          // setState(() {
          inlineAdLoaded = true;
          // });
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
          print('ad failed to load ${error.message}');
        },
      ),
    );

    inlineAd.load();
  }
}
