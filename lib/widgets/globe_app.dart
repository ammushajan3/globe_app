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
  static List<Widget> _widgetOptions = <Widget>[
    DashboardBody(),
    FindOutMoreButton(),
    ProfileSection(),
    LatestPromo(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DashboardAppBar(),
      drawer: Drawer(
        child: DashboardDrawer(),
      ),
      body:Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      // ListView.builder(
      //   itemCount: 10,
      //   itemBuilder: (ctx,index) =>Container(
      //     padding: EdgeInsets.all(8.0),
      //     child: Text('it works',style: TextStyle(color: Colors.black),),
      //   ),),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.COLOR_WHITE,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(Images.MOBILE,height: 28,width: 28,),
            label: 'Mobile',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(Images.LIFE_STYLE,height: 28,width: 28,),
            label: 'Lifestyle',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(Images.WALLET,height: 28,width: 28,),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(Images.MORE,height: 28,width: 28,),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: AppColors.COLOR_BLACK,
        onTap: _onItemTapped,
      ),
    );
  }
}
