import 'package:baduk_park/presentation/screen/view/view_screen.dart';
import 'package:baduk_park/presentation/view_model/board1_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';

import '../../components/widget_body/custom_tabbar.dart';
import '../../components/widget_body/post_widget.dart';
import '../../components/widget_data/post_tabbar_data.dart';
import '../../components/widget_data/top_tabbar_data.dart';
import '../edit/edit_screen.dart';
import '../manu_window.dart';

class Board1Screen extends StatefulWidget {
  const Board1Screen({Key? key}) : super(key: key);

  @override
  State<Board1Screen> createState() => _Board1ScreenState();
}

class _Board1ScreenState extends State<Board1Screen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    Future.microtask(() {
      final viewModel = context.read<Board1ViewModel>();
      viewModel.fetchPost();
      viewModel.loadStaticBanner();
      viewModel.loadInlineBanner();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<Board1ViewModel>();
    final staticAd = viewModel.staticBannerRepository.staticAd;
    final inlineAd = viewModel.inlineBannerRepository.inlineAd;
    return Scaffold(
      appBar: AppBar(
        title: const Text("BADUKPARK"),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.edit_outlined,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditScreen(),
                ),
              );
            },
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
            if (viewModel.isStaticBannerLoaded)
              Container(
                margin: const EdgeInsets.only(top: 8.0),
                child: AdWidget(ad: staticAd),
                width: staticAd.size.width.toDouble(),
                height: staticAd.size.height.toDouble(),
                alignment: Alignment.bottomCenter,
              ),
            const Divider(),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: viewModel.state.posts.length,
              itemBuilder: (context, index) {
                if (viewModel.isStaticBannerLoaded && index == 5) {
                  return Column(
                    children: [
                      SizedBox(
                        child: AdWidget(ad: inlineAd),
                        width: inlineAd.size.width.toDouble(),
                        height: inlineAd.size.height.toDouble(),
                      ),
                      const Divider(),
                      PostWidget(
                        post: viewModel.state.posts[index],
                        onClick: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ViewScreen(
                                post: viewModel.state.posts[index],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  );
                } else {
                  return PostWidget(
                    post: viewModel.state.posts[index],
                    onClick: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ViewScreen(
                            post: viewModel.state.posts[index],
                          ),
                        ),
                      );
                    },
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
          ],
        ),
      ),
      floatingActionButton: const MenuWindow(),
    );
  }
}
