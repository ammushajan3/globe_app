import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:task_app/themes/color.dart';

class Loader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.COLOR_WARM_BLUE,
      child: Center(
        child:  SpinKitRotatingCircle(
          color: AppColors.COLOR_WHITE,
          size: 50.0,
        ),
      ),
    );
  }
}
