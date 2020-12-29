import 'package:flutter/material.dart';
import 'package:task_app/resources/images.dart';
import 'package:task_app/themes/color.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(75);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color:AppColors.COLOR_BLACK),
        actions: [
          Container(
              width: 22.0,
              height: 22.0,
              child: Image(image: AssetImage(Images.BELL))),
          SizedBox(width:23.0),
          Container(
            width: 32.0,
            height: 32.0,
            child: CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage(Images.PROFILE_AVATAR),
              backgroundColor: Colors.transparent,
            ),
          ),
          SizedBox(width:20.0),
        ],
      ),
    );
  }
}
