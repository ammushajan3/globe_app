import 'package:flutter/material.dart';
import 'package:task_app/resources/images.dart';

import 'package:task_app/resources/strings.dart';
import 'package:task_app/themes/color.dart';
import 'package:task_app/widgets/common/special_promo.dart';
import 'package:task_app/widgets/dashboard_blue_banner.dart';
import 'package:task_app/widgets/plan.dart';

class DashboardBody extends StatelessWidget {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xFF3023AE), Color(0xFFC86DD7)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  final Shader promoTitleGradient = LinearGradient(
    colors: <Color>[Color(0xFFFFFFFF), Color(0xFFFFB2C6)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  final Shader buttonGradient = LinearGradient(
    colors: <Color>[Color.fromRGBO(0, 0, 0, 0.9), Color.fromRGBO(0, 0, 0, 0.6)],
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SpecialPromo(
                    promoTitle: Strings.SPECIAL_PROMOS,
                    planName: Strings.PROMO_NAME,
                    planTitle: Strings.PROMO_TITLE,
                    planSubTitle: Strings.PROMO_SUBTITLE,
                    buttonTitle: Strings.CREATE_YOUR_OWN_PROMO,
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top:40.0,bottom:12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              Strings.LATEST_PROMOS,
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  foreground: Paint()..shader = linearGradient),
                            ),
                            Text(Strings.VIEW_ALL,style: Theme.of(context).textTheme.headline6,),
                          ],
                        ),
                      ),
                      Container(
                        height: 168.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [

                          ],
                        ),
                      )
                    ],
                  ),

                  SpecialPromo(
                    promoTitle: Strings.ROAMING_PLANS,
                    planName: Strings.PROMO_NAME,
                    planTitle: Strings.PLAN_FOR_FOREIGN_TRIP,
                    planSubTitle: Strings.ROAM_WORRY_FREE,
                    buttonTitle: Strings.EXPLORE_ROAMING,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
