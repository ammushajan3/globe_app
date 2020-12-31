import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_app/themes/themes.dart';
import 'package:task_app/widgets/dashboard_app_bar.dar.dart';
import 'package:task_app/widgets/dashboard_body.dart';
import 'package:task_app/widgets/dashboard_drawer.dart';
import 'package:task_app/resources/images.dart';
import 'package:task_app/themes/color.dart';
import 'package:task_app/widgets/find_out_more.dart';
import 'package:task_app/widgets/globe_app.dart';
void main() {
  runApp(
    MaterialApp(
      theme: Themes.lightTheme,
      home: Dashboard(),
    ),
  );
}
