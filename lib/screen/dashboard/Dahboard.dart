import 'package:flutter/material.dart';

import 'BulletinBoard.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BulletinBoard(),
    );
  }
}
