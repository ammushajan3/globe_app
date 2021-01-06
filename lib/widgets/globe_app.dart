import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_app/themes/themes.dart';
import 'package:task_app/widgets/dashboard_app_bar.dar.dart';
import 'package:task_app/widgets/dashboard_body.dart';
import 'package:task_app/widgets/dashboard_drawer.dart';
import 'package:task_app/resources/images.dart';
import 'package:task_app/themes/color.dart';
import 'package:task_app/widgets/dashboard_white-banner.dart';
import 'package:task_app/widgets/find_out_more.dart';
import 'package:task_app/widgets/latest_promo_card.dart';
import 'package:task_app/widgets/profile_section.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // List<int> _navigationList = List();
  ListQueue<int> _navigationQueue = ListQueue();
  static List<Widget> _widgetOptions = <Widget>[
    DashboardBody(),
    FindOutMoreButton(),
    ProfileSection(),
    LatestPromo(),
  ];

  // function for content change in nav bar
  void _onItemTapped(int index) {
    _navigationQueue.addLast(_selectedIndex);
    setState(() {
      _selectedIndex = index;
    });
    // if (!_navigationList.contains(_selectedIndex))
    //   _navigationList.add(_selectedIndex);
    // print('selected index: $_navigationList');
  }
// on back pressed function
  Future<bool> _onBackPressed() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(
                'Do you really want to exit the app ?',
                style: TextStyle(color: AppColors.COLOR_BLACK),
              ),
              actions: <Widget>[
                FlatButton(
                    onPressed: () {
                      Navigator.pop(context, false);
                    },
                    child: Text('NO')),
                FlatButton(
                    onPressed: () {
                      Navigator.pop(context, true);
                    },
                    child: Text('YES'))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // function to stop user from exit the app
      onWillPop: (() async {
        if (_navigationQueue.isEmpty)
          _onBackPressed();

        setState(() {
          _selectedIndex = _navigationQueue.last;
          _navigationQueue.removeLast();
        });
        return false;
      }),
      child: Scaffold(
        appBar: DashboardAppBar(),
        drawer: Drawer(
          child: DashboardDrawer(),
        ),
        body: Center(
          // selected items from the bottom nav bar
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.COLOR_WHITE,
          // bottom nav bar items
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset(
                Images.MOBILE,
                height: 28,
                width: 28,
              ),
              label: 'Mobile',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                Images.LIFE_STYLE,
                height: 28,
                width: 28,
              ),
              label: 'Lifestyle',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                Images.WALLET,
                height: 28,
                width: 28,
              ),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                Images.MORE,
                height: 28,
                width: 28,
              ),
              label: 'More',
            ),
          ],
          // current index of the bottom nav
          currentIndex: _selectedIndex,
          // color of selected item in nav
          selectedItemColor: Colors.amber[800],
          // color of unselected item in nav
          unselectedItemColor: AppColors.COLOR_BLACK,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
