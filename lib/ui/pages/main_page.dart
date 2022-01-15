import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  late TabController _topTabController;
  late TabController _postTabController;
  int review = 0;
  @override
  void initState() {
    super.initState();
    _topTabController = TabController(length: 3, vsync: this);
    _postTabController = TabController(length: 5, vsync: this);
  }

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
            Material(
              color: const Color.fromRGBO(250, 250, 250, 1.0),
              child: TabBar(
                unselectedLabelColor: Colors.black,
                labelColor: Colors.deepPurple,
                controller: _topTabController,
                tabs: const <Widget>[
                  Tab(
                    text: '바둑리그1',
                  ),
                  Tab(
                    text: '바둑리그2',
                  ),
                  Tab(
                    text: '바둑리그3',
                  ),
                ],
              ),
            ), // 상단 탭바
            const Divider(),
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
                                text: '${review}',
                                style: TextStyle(color: Colors.red)),
                          ])),
                          // Text('댓글 13'),
                        ],
                      ),
                      Divider()
                    ],
                  ),
                );
              }).toList(),
            ),
            Container(
              color: const Color.fromRGBO(237, 237, 237, 1.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Material(
                      color: const Color.fromRGBO(237, 237, 237, 1.0),
                      child: TabBar(
                        indicatorColor: Colors.transparent,
                        // automaticIndicatorColorAdjustment: false,
                        unselectedLabelColor: Colors.black,
                        labelColor: Colors.deepPurple,
                        controller: _postTabController,
                        tabs: <Widget>[
                          Tab(
                            text: '1',
                          ),
                          Tab(
                            text: '2',
                          ),
                          Tab(
                            text: '3',
                          ),
                          Tab(
                            text: '4',
                          ),
                          Tab(
                            text: '5',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                      ),
                    ),
                  ),
                ],
              ),
            ), // 게시글 리스트 30개 : 한페이지
          ],
        ),
      ),
    );
  }
}
