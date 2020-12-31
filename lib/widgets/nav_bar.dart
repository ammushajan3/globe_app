import 'package:flutter/material.dart';
import 'package:task_app/resources/images.dart';
import 'package:task_app/themes/color.dart';
import 'package:task_app/themes/themes.dart';
import 'package:task_app/widgets/dashboard_app_bar.dar.dart';
import 'package:task_app/widgets/dashboard_body.dart';
import 'package:task_app/widgets/dashboard_drawer.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

/// This is the private State class that goes with BottomNavBar.
class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        // selectedItemColor: AppColors.COLOR_BLACK,
      ),
    );
  }
}


// class BottomNavBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Theme(
//       data: Theme.of(context).copyWith(
//           // canvasColor: Colors.green,
//           // primaryColor: AppColors.COLOR_BLACK,
//           textTheme: Theme.of(context).textTheme.copyWith(
//               caption: TextStyle(color: AppColors.COLOR_BLACK)
//           )
//       ),
//       child: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         backgroundColor: AppColors.COLOR_WHITE,
//         items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Image.asset(Images.MOBILE,height: 28,width: 28,),
//             label: 'Mobile',
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset(Images.LIFE_STYLE,height: 28,width: 28,),
//             label: 'Lifestyle',
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset(Images.WALLET,height: 28,width: 28,),
//             label: 'Wallet',
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset(Images.MORE,height: 28,width: 28,),
//             label: 'More',
//           ),
//         ],
//         // selectedItemColor: AppColors.COLOR_BLACK,
//       ),
//     );
//   }
// }
