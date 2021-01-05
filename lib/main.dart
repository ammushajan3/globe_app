import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_app/core/models/user_model.dart';
import 'package:task_app/core/services/auth.dart';
import 'package:task_app/screens/wrapper.dart';
import 'package:task_app/themes/themes.dart';
import 'package:task_app/widgets/dashboard_app_bar.dar.dart';
import 'package:task_app/widgets/dashboard_body.dart';
import 'package:task_app/widgets/dashboard_drawer.dart';
import 'package:task_app/resources/images.dart';
import 'package:task_app/themes/color.dart';
import 'package:task_app/widgets/find_out_more.dart';
import 'package:task_app/widgets/globe_app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        theme: Themes.lightTheme,
        home: Wrapper(),
      ),
    );
  }
}
