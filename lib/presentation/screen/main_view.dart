import 'package:baduk_park/presentation/view_model/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';

import '../components/widget_body/ad.dart';
import '../components/widget_body/custom_tabbar.dart';
import '../components/widget_body/post_widget.dart';
import '../components/widget_data/ad_data.dart';
import '../components/widget_data/post_tabbar_data.dart';
import '../components/widget_data/top_tabbar_data.dart';
import 'manu_window.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> with TickerProviderStateMixin {
  late BannerAd staticAd;
  bool staticAdLoaded = false;

  late BannerAd inlineAd;
  bool inlineAdLoaded = false;

  static const AdRequest request = AdRequest();

  void loadStaticBannerAd() {
    staticAd = BannerAd(
      // adUnitId: 'ca-app-pub-3940256099942544~3347511713',
      adUnitId: BannerAd.testAdUnitId,
      size: AdSize.banner,
      request: request,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            staticAdLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
          print('ad failed to load ${error.message}');
        },
      ),
    );

    staticAd.load();
  }

  void loadInlineBannerAd() {
    inlineAd = BannerAd(
      adUnitId: BannerAd.testAdUnitId,
      size: AdSize.banner,
      request: request,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            inlineAdLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
          print('ad failed to load ${error.message}');
        },
      ),
    );

    inlineAd.load();
  }

  @override
  void initState() {
    loadStaticBannerAd();
    loadInlineBannerAd();
    Future.microtask(() => context.read<MainViewModel>().fetchPost());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("BADUKPARK"),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.edit_outlined,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.search_outlined,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomTabBar(
                tabBarLength: topTabBarTexts().tabTexts.length,
                tabTexts: topTabBarTexts().tabTexts),
            if (staticAdLoaded)
              Container(
                margin: const EdgeInsets.only(top: 8.0),
                child: AdWidget(ad: staticAd),
                width: staticAd.size.width.toDouble(),
                height: staticAd.size.height.toDouble(),
                alignment: Alignment.bottomCenter,
              ),
            // const SizedBox(
            //   height: 30,
            // ),
            // AD(
            //   adImg: topAdModel().adImg,
            // ),
            const Divider(),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: viewModel.state.posts.length,
              itemBuilder: (context, index) {
                if (inlineAdLoaded && index == 5) {
                  return Column(
                    children: [
                      SizedBox(
                        child: AdWidget(ad: inlineAd),
                        width: inlineAd.size.width.toDouble(),
                        height: inlineAd.size.height.toDouble(),
                      ),
                      ListTile(
                        title: PostWidget(
                          post: viewModel.state.posts[index],
                        ),
                      )
                    ],
                  );
                } else {
                  return ListTile(
                    title: PostWidget(
                      post: viewModel.state.posts[index],
                    ),
                  );
                }
              },
            ),
            CustomTabBar(
              indicatorColor: Colors.transparent,
              prev: true,
              next: true,
              tabBarLength: postTabBarTexts().tabTexts.length,
              tabTexts: postTabBarTexts().tabTexts,
            ),
            AD(adImg: centerAdModel().adImg)
          ],
        ),
      ),
      floatingActionButton: const MenuWindow(),
    );
  }
}
