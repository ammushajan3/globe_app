import 'package:flutter/material.dart';
import 'package:task_app/themes/color.dart';
import 'package:task_app/themes/themes.dart';
import 'package:task_app/widgets/dashboard_app_bar.dar.dart';
import 'package:task_app/widgets/dashboard_body.dart';
import 'package:task_app/widgets/dashboard_drawer.dart';
import 'package:task_app/widgets/nav_bar.dart';

void main() {
  runApp(
    MaterialApp(
      theme: Themes.lightTheme,
      home: Dashboard(),
    ),
  );
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DashboardAppBar(),
      drawer: Drawer(
        child: DashboardDrawer(),
      ),
      body:DashboardBody(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
