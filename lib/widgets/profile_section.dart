import 'package:flutter/material.dart';
import 'package:task_app/resources/strings.dart';
import 'package:task_app/themes/color.dart';
import 'package:task_app/resources/images.dart';
import 'package:task_app/widgets/dashboard_app_bar.dar.dart';
import 'package:task_app/widgets/dashboard_body.dart';
class ProfileSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(Strings.VIEW_ALL),
    backgroundColor: AppColors.COLOR_PURPLE,
    ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage(Images.PROFILE_AVATAR),
                  backgroundColor: Colors.transparent,
                ),
              ),
              Text('Hello User',style:Theme.of(context).textTheme.bodyText1),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardAppBar(),),);
                },
                child: Text('Go back!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
