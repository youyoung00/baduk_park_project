import 'package:baduk_park/presentation/view_model/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/widget_body/ad.dart';
import '../components/widget_body/custom_tabbar.dart';
import '../components/widget_body/post.dart';
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
  @override
  void initState() {
    context.read<MainViewModel>().fetchPost();
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
                      inputTime: e.timestamp);
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
      floatingActionButton: const MenuWindow(),
    );
  }
}
