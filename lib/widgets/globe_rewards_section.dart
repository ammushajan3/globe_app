import 'package:flutter/material.dart';
import 'package:task_app/resources/images.dart';

import 'package:task_app/resources/strings.dart';
import 'package:task_app/themes/color.dart';
import 'file:///C:/Users/Admin/AndroidStudioProjects/globe_app/lib/widgets/latest_promo_card.dart';
import 'package:task_app/widgets/common/special_promo.dart';
import 'package:task_app/widgets/dashboard_blue_banner.dart';
import 'package:task_app/widgets/plan.dart';

class GlobeRewards extends StatelessWidget {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xFF3023AE), Color(0xFFC86DD7)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  @override
  Widget build(BuildContext context) {
    return     Container(
      margin: EdgeInsets.only(top: 36.0, bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Strings.GLOBE_REWARDS,
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                foreground: Paint()..shader = linearGradient),
          ),
          SizedBox(
            height: 12.0,
          ),
          Card(
            child: Container(
              padding: EdgeInsets.only(
                  right: 20.0,
                  top: 16.0,
                  left: 16.0,
                  bottom: 16.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(colors: [
                    Color(0xFFF9AE34),
                    Color(0xFFFF8720)
                  ])),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(Strings.YOUR_REWARD_POINT,
                          style: Theme.of(context)
                              .textTheme
                              .caption
                              .apply(fontSizeDelta: -1)),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        Strings.POINTS,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .apply(color: AppColors.COLOR_WHITE),
                      ),
                    ],
                  ),
                  Image.asset(
                    Images.ORANGE_ICON,
                    height: 57.0,
                    width: 43.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
