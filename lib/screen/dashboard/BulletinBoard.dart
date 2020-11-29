import 'package:flutter/material.dart';

import '../../ui/index.dart';
import '../../module/fake.dart';
import '../../constant/index.dart';

import 'BulletinBoardItem.dart';

class BulletinBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = fakeFeeds;
    print(items);
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          UiCardTitle(
            title: Terms.bulletinBoard,
            action: UiCircleButton(
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
          // Text('tt'),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: BulletinBoardItem(
                    feed: items[index],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
