import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../core/security area/keys/api_key.dart';

class GetStaticBannerAdUseCase {
  final AdRequest _adRequest;
  late BannerAd _staticAd;

  BannerAd get staticAd => _staticAd;

  GetStaticBannerAdUseCase(this._adRequest);

  Future<void> call({required bool staticAdLoaded}) async {
    _staticAd = BannerAd(
      adUnitId: Keys.adKey,
      size: AdSize.banner,
      request: _adRequest,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          staticAdLoaded = true;
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
          print('ad failed to load ${error.message}');
        },
      ),
    );
    _staticAd.load();
  }
}
