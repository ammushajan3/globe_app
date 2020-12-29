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
                        margin: EdgeInsets.only(top: 40.0, bottom: 12.0),
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
                            Text(
                              Strings.VIEW_ALL,
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 168.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: new DecorationImage(
                                      image:
                                          new AssetImage(Images.LATEST_PROMO),
                                      fit: BoxFit.fill),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(20, 20, 0,26),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            Images.SPOTIFY_ICON,
                                            height: 18.0,
                                            width: 18.0,
                                          ),
                                          SizedBox(
                                            height: 15.0,
                                          ),
                                          Text(Strings.SPOTIFY_PREMIUM),

                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: new BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        gradient: new LinearGradient(
                                          colors: [
                                            Color.fromRGBO(0, 0, 0, 0.9),
                                            Color.fromRGBO(0, 0, 0, 0.6)
                                          ],
                                          begin: FractionalOffset.centerLeft,
                                          end: FractionalOffset.centerRight,
                                        ),
                                      ),
                                      child: FlatButton(
                                        height: 68.0,
                                        onPressed: () {
                                          /*...*/
                                        },
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(Strings.PACKAGE_TITLE,style: Theme.of(context).textTheme.headline5.apply(fontWeightDelta: -1),),
                                            SizedBox(height: 2.0,),
                                            Text(Strings.PACKAGE_PRICE,style: Theme.of(context).textTheme.headline5),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
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
