import 'package:flutter/material.dart';

import '../../module/model.dart';
import '../../ui/index.dart';

class BulletinBoardItem extends StatelessWidget {
  final FeedModel feed;
  const BulletinBoardItem({Key key, this.feed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(this.feed);
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.grey, width: 1.0, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(12.0)),
      child: Column(
        children: [
          UiCardMedia(url: this.feed.thumb),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8),
                UiText(title: this.feed.title),
                SizedBox(height: 16),
                UiText(description: this.feed.content),
                SizedBox(height: 16),
                Divider(),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: UiText(listTitle: this.feed.author.fullName),
                  subtitle: UiText(listSubTitle: this.feed.created),
                  leading: UiAvatarCircle(url: this.feed.author.avatar),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
