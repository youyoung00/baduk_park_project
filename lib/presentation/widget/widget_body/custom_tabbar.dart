import 'package:flutter/material.dart';

import 'navigator_Icon.dart';

class CustomTabBar extends StatefulWidget {
  final int tabBarLength;
  final Color? indicatorColor;
  final Color? backgroundColor;
  final List tabTexts;
  final bool? prev;
  final bool? next;

  const CustomTabBar(
      {Key? key,
      required this.tabBarLength,
      this.indicatorColor,
      required this.tabTexts,
      this.next,
      this.prev,
      this.backgroundColor})
      : super(key: key);

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.tabBarLength, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            widget.prev == true
                ? NavigatorIcon(
                    icon: Icons.arrow_back_ios,
                    onPress: () {},
                  )
                : Container(),
            Expanded(
              child: Material(
                color: const Color.fromRGBO(250, 250, 250, 1.0),
                child: TabBar(
                    indicatorColor: widget.indicatorColor ?? Colors.deepPurple,
                    unselectedLabelColor: Colors.black,
                    labelColor: Colors.deepPurple,
                    controller: _tabController,
                    tabs: widget.tabTexts
                        .map<Widget>((e) => Tab(text: e))
                        .toList()),
              ),
            ),
            widget.next == true
                ? NavigatorIcon(
                    icon: Icons.arrow_forward_ios,
                    onPress: () {},
                  )
                : Container(),
          ],
        ),
        const Divider(
          height: 1,
        ),
      ],
    );
  }
}
