import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  late TabController _tabController;
  List<ListTile> listTile = [
    ListTile(
      title: Text('MLB'),
    )
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
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
                controller: _tabController,
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
            ),
            const Divider(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
              child: Image.network(
                  'https://cdn.pixabay.com/photo/2016/11/20/08/33/camera-1842202__480.jpg'),
            ),
            const Divider(),
            Column(
              children: List<Widget>.generate(20, (i) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Text('KB바둑리그'),
                        SizedBox(
                          width: 10,
                        ),
                        Text('만약에 신진서가 인공지능에게 이긴다면?'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('담당자'),
                        SizedBox(
                          width: 10,
                        ),
                        Text('2시간전'),
                        SizedBox(
                          width: 10,
                        ),
                        Text('댓글 13'),
                      ],
                    ),
                    Divider()
                  ],
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
