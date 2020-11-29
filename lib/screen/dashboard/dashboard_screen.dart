import 'package:classmate_ui/ui/layout/tab_column.dart';
import 'package:flutter/material.dart';

import '../../module/fake.dart';

import 'bulletin_board.dart';
import 'shift_monitor.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabColumn(
      tabsData: [
        TabData(
            title: "Buletting board",
            child: BulletinBoard(feeds: fakeFeeds),
            icon: BulletinBoard.icon),
        TabData(
            title: "Shift Monitor",
            child: BulletinBoard(feeds: fakeFeeds),
            icon: BulletinBoard.icon),
      ],
      // children: [
      //   BulletinBoard(feeds: fakeFeeds),
      //   BulletinBoard(feeds: fakeFeeds),
      //   // ShiftMonitor(),
      // ],
    );
  }
}
