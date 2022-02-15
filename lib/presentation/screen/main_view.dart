import 'package:baduk_park/presentation/view_model/post_view_model_data.dart';
import 'package:baduk_park/presentation/widget/widget_body/ad.dart';
import 'package:baduk_park/presentation/widget/widget_body/custom_tabbar.dart';
import 'package:baduk_park/presentation/widget/widget_body/post.dart';
import 'package:baduk_park/presentation/widget/widget_data/ad_data.dart';
import 'package:baduk_park/presentation/widget/widget_data/post_tabbar_data.dart';
import 'package:baduk_park/presentation/widget/widget_data/top_tabbar_data.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widget/widget_body/manu_button.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> with TickerProviderStateMixin {
  // late BannerAd staticAd;
  // bool staticAdLoaded = false;
  // late BannerAd inlineAd;
  // bool inlineAdLoaded = false;
  //
  // static const AdRequest request = AdRequest(
  //     // keywords: ['',''],
  //     // contentUrl: '',
  //     // nonPersonalizedAds: false
  //     );
  //
  // void loadStaticBannerAd() {
  //   staticAd = BannerAd(
  //     adUnitId: BannerAd.testAdUnitId,
  //     size: AdSize.banner,
  //     request: request,
  //     listener: BannerAdListener(
  //       onAdLoaded: (ad) {
  //         setState(() {
  //           staticAdLoaded = true;
  //         });
  //       },
  //       onAdFailedToLoad: (ad, error) {
  //         ad.dispose();
  //         print('ad failed to load ${error.message}');
  //       },
  //     ),
  //   );
  //
  //   staticAd.load();
  // }
  //
  // void loadInlineBannerAd() {
  //   inlineAd = BannerAd(
  //     adUnitId: BannerAd.testAdUnitId,
  //     size: AdSize.banner,
  //     request: request,
  //     listener: BannerAdListener(
  //       onAdLoaded: (ad) {
  //         setState(() {
  //           inlineAdLoaded = true;
  //         });
  //       },
  //       onAdFailedToLoad: (ad, error) {
  //         ad.dispose();
  //         print('ad failed to load ${error.message}');
  //       },
  //     ),
  //   );
  //
  //   staticAd.load();
  // }

  @override
  void initState() {
    context.read<PostViewModelData>().fetchPost();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<PostViewModelData>();
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
          IconButton(
            icon: const Icon(
              Icons.logout,
            ),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomTabBar(
                tabBarLength: topTabBarTexts().tabTexts.length,
                tabTexts: topTabBarTexts().tabTexts),
            // Container(
            //   child: AdWidget(ad: staticAd),
            //   width: staticAd.size.width.toDouble(),
            //   height: staticAd.size.height.toDouble(),
            // ),
            AD(adImg: topAdModel().adImg),
            const Divider(),
            SizedBox(
              height: 800,
              child: ListView(
                children: viewModel.postList.map<Widget>((e) {
                  return Post(
                      keyword: e.keyword,
                      name: e.name,
                      title: e.title,
                      id: e.id,
                      comment: e.comment,
                      contents: e.contents,
                      inputTime: e.inputTime);
                }).toList(),
              ),
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
      floatingActionButton: const MenuButton(),
    );
  }
}
