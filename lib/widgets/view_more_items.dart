import 'package:flutter/material.dart';
import 'package:task_app/resources/strings.dart';
import 'package:task_app/themes/color.dart';
class ViewMoreItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.VIEW_ALL),
        backgroundColor: AppColors.COLOR_PURPLE,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}