import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_app/resources/images.dart';

import 'package:task_app/resources/strings.dart';
import 'package:task_app/themes/color.dart';
import 'package:task_app/widgets/dashboard_blue_banner.dart';
import 'package:task_app/widgets/plan.dart';

class DashboardBody extends StatelessWidget {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xFF3023AE), Color(0xFFC86DD7)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  final Shader promoTitleGradient = LinearGradient(
    colors: <Color>[Color(0xFFFFFFFF), Color(0xFFFFB2C6)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Plan(),
            DashboardBlueBanner(),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 32.0, 20.0, 36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Strings.SPECIAL_PROMOS,
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()..shader = linearGradient),
                  ),
                  Card(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 17.0),
                      margin:EdgeInsets.only(top:12.0),
                      decoration: BoxDecoration(
                          image: new DecorationImage(
                              image: new AssetImage(Images.SPECIAL_PROMO),fit: BoxFit.fill),),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(Strings.PROMO_NAME,style: Theme.of(context).textTheme.headline5),
                            SizedBox(height: 8.0,),
                            Text(Strings.PROMO_TITLE,style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold,foreground: Paint()..shader = linearGradient),),
                            Text(Strings.PROMO_SUBTITLE,style: Theme.of(context).textTheme.caption),
                          ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
