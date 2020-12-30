import 'package:flutter/material.dart';
import 'package:task_app/resources/images.dart';
import 'package:task_app/themes/color.dart';
import 'package:task_app/themes/themes.dart';
import 'package:task_app/widgets/dashboard_app_bar.dar.dart';
import 'package:task_app/widgets/dashboard_body.dart';
import 'package:task_app/widgets/dashboard_drawer.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          // canvasColor: Colors.green,
          primaryColor: AppColors.COLOR_BLACK,
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: AppColors.COLOR_BLACK)
          )
      ),
      child: BottomNavigationBar(
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
        // selectedItemColor: AppColors.COLOR_BLACK,
      ),
    );
  }
}
