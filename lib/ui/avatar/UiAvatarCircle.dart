import 'package:flutter/material.dart';

class UiAvatarCircle extends StatelessWidget {
  final String url;
  const UiAvatarCircle({Key key, this.url}) : super(key: key);

  @override
  Widget build(context) {
    return CircleAvatar(
        backgroundColor: Colors.grey, backgroundImage: NetworkImage(this.url));
  }
}
