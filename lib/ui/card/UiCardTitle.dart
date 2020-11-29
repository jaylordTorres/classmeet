import 'package:flutter/material.dart';

class UiCardTitle extends StatelessWidget {
  final String title;
  final Widget action;
  const UiCardTitle({Key key, this.title, this.action}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(this.title,
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold)),
          this.action ?? Container()
        ],
      ),
    );
  }
}
