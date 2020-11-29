import 'package:flutter/material.dart';

class UiCircleButton extends StatelessWidget {
  final Function onPressed;
  const UiCircleButton({Key key, this.child, this.onPressed}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.greenAccent,
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(0, 5)),
            ],
            gradient: LinearGradient(
              colors: [Colors.lightBlue, Colors.green],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: this.child),
    );
  }
}
