import 'package:flutter/material.dart';

class UiText extends StatelessWidget {
  final String description;
  final String title;
  final String listTitle;
  final String listSubTitle;
  const UiText(
      {Key key,
      this.title,
      this.listTitle,
      this.listSubTitle,
      this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle style;
    String text = '';
    double margin;

    if (this.title != null && this.title.isNotEmpty) {
      text = this.title;
      margin = 8.0;
      style = TextStyle(
          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87);
    }
    if (this.listTitle != null && this.listTitle.isNotEmpty) {
      text = this.listTitle;
      // margin = 8.0;
      style = TextStyle(
          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87);
    }
    if (this.listSubTitle != null && this.listSubTitle.isNotEmpty) {
      text = this.listSubTitle;
      // margin = 8.0;
      style = TextStyle(
          fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black54);
    }

    if (this.description != null && this.description.isNotEmpty) {
      text = this.description;
      style = TextStyle(color: Colors.grey, fontSize: 12);
    }
    return Container(
      margin: margin != null ? EdgeInsets.symmetric(vertical: margin) : null,
      child: Text(text, style: style),
    );
  }
}
