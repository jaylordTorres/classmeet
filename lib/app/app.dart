import 'package:classmate_ui/screen/monitor/monitor.dart';
import 'package:flutter/material.dart';

import '../screen/dashboard/dashboard_screen.dart';
import '../constant/index.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Terms.projectName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardScreen(),
      // routes: {
      //   "/dashboard": (_) => DashboardScreen(),
      //   "/monitor": (_) => MonitorScreen(),
      // },
    );
  }
}
