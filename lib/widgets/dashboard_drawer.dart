import 'package:flutter/material.dart';
import 'package:task_app/widgets/profile_section.dart';

class DashboardDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('My prepaid'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('About Globe'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Profile'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileSection(),),);
            },
          ),
        ],
      ),
    );
  }
}
