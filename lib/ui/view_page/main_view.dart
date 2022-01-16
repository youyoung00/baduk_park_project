import 'package:baduk_park/ui/view_data/view_model_data/post_tabbar_data.dart';
import 'package:baduk_park/ui/view_data/view_model_data/top_tabbar_data.dart';
import 'package:baduk_park/ui/view_widget/custom_tabbar.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> with TickerProviderStateMixin {
  int reviewCount = 0;

  @override
  Widget build(BuildContext context) {
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
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomTabBar(
                tabBarLength: topTabBarTexts().tabTexts.length,
                tabTexts: topTabBarTexts().tabTexts),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
              child: Image.network(
                  'https://cdn.pixabay.com/photo/2016/11/20/08/33/camera-1842202__480.jpg'),
            ), // 광고1
            const Divider(),
            Column(
              children: List<Widget>.generate(30, (i) {
                return Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'KB바둑리그',
                            style: TextStyle(color: Colors.deepPurple),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('만약에 신진서가 인공지능에게 이긴다면?'),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '담당자',
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('2시간전'),
                          SizedBox(
                            width: 10,
                          ),
                          Text.rich(TextSpan(text: '댓글 ', children: [
                            TextSpan(
                                text: '$reviewCount',
                                style: const TextStyle(color: Colors.red)),
                          ])),
                          // Text('댓글 13'),
                        ],
                      ),
                      const Divider()
                    ],
                  ),
                );
              }).toList(),
            ), // 게시글 리스트 30개 : 한페이지

            CustomTabBar(
              indicatorColor: Colors.transparent,
              prev: true,
              next: true,
              tabBarLength: postTabBarTexts().tabTexts.length,
              tabTexts: postTabBarTexts().tabTexts,
            ), // 게시글 페이지 탭바
          ],
        ),
      ),
    );
  }
}
