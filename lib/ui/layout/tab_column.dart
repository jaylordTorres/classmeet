import 'package:flutter/material.dart';

class TabData {
  final String title;
  final Widget child;
  final Icon icon;
  TabData({this.title, this.child, this.icon});
}

//
// column if big screen
// tab if small screen
//
class TabColumn extends StatelessWidget {
  final List<TabData> tabsData;
  const TabColumn({Key key, this.tabsData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth > 500 && screenWidth < 1000) {
      return Scaffold(
          body: Container(
              child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: this.tabsData.map((e) => Expanded(child: e.child)).toList(),
      )));
    }

    return DefaultTabController(
      length: this.tabsData.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: this
                .tabsData
                .map((e) => Tab(
                      icon: e.icon,
                    ))
                .toList(),
          ),
        ),
        body: TabBarView(
          children: this.tabsData.map((e) => e.child).toList(),
        ),
      ),
    );
  }
}
