import 'package:flutter/material.dart';
import 'package:task_app/themes/color.dart';
import 'package:task_app/themes/themes.dart';
import 'package:task_app/widgets/dashboard_app_bar.dar.dart';
import 'package:task_app/widgets/dashboard_body.dart';
import 'package:task_app/widgets/dashboard_drawer.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.COLOR_LIGHT_BLUE,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_books),
          label: 'Library',
        ),
      ],
      selectedItemColor: AppColors.COLOR_BLACK,
    );
  }
}
