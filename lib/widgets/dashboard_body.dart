import 'package:flutter/material.dart';
import 'package:task_app/resources/images.dart';

import 'package:task_app/resources/strings.dart';
import 'package:task_app/themes/color.dart';
import 'file:///C:/Users/Admin/AndroidStudioProjects/globe_app/lib/widgets/latest_promo_card.dart';
import 'package:task_app/widgets/common/special_promo.dart';
import 'package:task_app/widgets/dashboard_blue_banner.dart';
import 'package:task_app/widgets/find_out_more.dart';
import 'package:task_app/widgets/globe_rewards_section.dart';
import 'package:task_app/widgets/plan.dart';

class DashboardBody extends StatelessWidget {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xFF3023AE), Color(0xFFC86DD7)],
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
                  SizedBox(
                    height: 51.0,
                  ),
                  SpecialPromo(
                    promoTitle: Strings.ROAMING_PLANS,
                    planName: Strings.PROMO_NAME,
                    planTitle: Strings.PLAN_FOR_FOREIGN_TRIP,
                    planSubTitle: Strings.ROAM_WORRY_FREE,
                    buttonTitle: Strings.EXPLORE_ROAMING,
                  ),
                  GlobeRewards(),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Strings.HERE_IS_WHAT,
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        Container(
                          height: 180.0,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child:Container(
                                  decoration: BoxDecoration(
                                    image: new DecorationImage(
                                        image:
                                        new AssetImage(Images.SHOE_COVER_IMG),
                                        fit: BoxFit.fill),
                                  ),
                                  padding: EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        Images.ALDO_LOGO,
                                        height: 28.0,
                                        width: 64.0,
                                      ),
                                      Text(Strings.NUMBER_POINTS),
                                      Text(Strings.OFFER),
                                    ],
                                  ),
                                ) ,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  FindOutMoreButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
