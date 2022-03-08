import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdApi {
  final BannerAd staticAd;

  bool staticAdLoaded = false;

  AdApi(this.staticAd);

  static const AdRequest request = AdRequest();
}
