import 'package:classmate_ui/module/feed/FeedModel.dart';
import 'package:flutter/material.dart';

import '../../ui/index.dart';
import '../../constant/index.dart';

import 'BulletinBoardItem.dart';

class BulletinBoard extends StatelessWidget {
  const BulletinBoard({Key key, this.feeds}) : super(key: key);
  final List<FeedModel> feeds;

  @override
  Widget build(BuildContext context) {
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
          Expanded(
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12.0)),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: feeds.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: index == 0
                        ? const EdgeInsets.only(bottom: 16.0)
                        : const EdgeInsets.symmetric(vertical: 16.0),
                    child: BulletinBoardItem(
                      feed: feeds[index],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
