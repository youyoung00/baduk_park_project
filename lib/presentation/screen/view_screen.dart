import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';

import '../../domain/model/post.dart';
import '../components/widget_body/custom_tabbar.dart';
import '../components/widget_data/top_tabbar_data.dart';
import '../view_model/view_view_model.dart';

class ViewScreen extends StatefulWidget {
  final Post post;

  const ViewScreen({Key? key, required this.post}) : super(key: key);

  @override
  State<ViewScreen> createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {
  @override
  void initState() {
    Future.microtask(() {
      final viewModel = context.read<ViewViewModel>();
      // viewModel.fetchPost();
      viewModel.loadStaticBanner();
      // viewModel.loadInlineBanner();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<ViewViewModel>();
    final staticAd = viewModel.staticBannerRepository.staticAd;
    return Scaffold(
      appBar: AppBar(
        title: const Text("ViewScreen"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
              SizedBox(
                // color: Colors.red,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Flexible(
                        child: RichText(
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          strutStyle: StrutStyle(fontSize: 16.0),
                          text: TextSpan(
                            text: widget.post.title,
                            style: const TextStyle(
                                color: Colors.black,
                                height: 1.4,
                                fontSize: 18.0,
                                fontFamily: 'NanumSquareRegular'),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    widget.post.emailName,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    widget.post.createdAt.toString(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 8.0,
                            right: 8.0,
                            bottom: 8.0,
                          ),
                          child: RichText(
                            textAlign: TextAlign.start,
                            text: TextSpan(
                              // text: widget.post.emailName,
                              children: <TextSpan>[
                                TextSpan(
                                  text: '조회 ${widget.post.viewCount} | ',
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                                TextSpan(
                                  text: '댓글 ${widget.post.commentCount}',
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Divider(),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Flexible(
                            child: RichText(
                              overflow: TextOverflow.ellipsis,
                              maxLines: 100,
                              strutStyle: StrutStyle(fontSize: 16.0),
                              text: TextSpan(
                                text: widget.post.content,
                                style: const TextStyle(
                                    color: Colors.black,
                                    height: 1.4,
                                    fontSize: 18.0,
                                    fontFamily: 'NanumSquareRegular'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Text()
            ],
          ),
        ),
      ),
    );
  }
}
