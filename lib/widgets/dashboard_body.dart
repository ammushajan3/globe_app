import 'package:flutter/material.dart';
import 'package:task_app/resources/images.dart';

import 'package:task_app/resources/strings.dart';
import 'package:task_app/themes/color.dart';
import 'file:///C:/Users/Admin/AndroidStudioProjects/globe_app/lib/widgets/latest_promo_card.dart';
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
                  LatestPromo(),
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
