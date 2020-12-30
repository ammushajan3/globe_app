import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_app/resources/images.dart';

import 'package:task_app/resources/strings.dart';
import 'package:task_app/themes/color.dart';
import 'package:task_app/widgets/common/app_offer_card.dart';
import 'package:task_app/widgets/common/movie_card_section.dart';
import 'package:task_app/widgets/common/offer_card.dart';
import 'file:///C:/Users/Admin/AndroidStudioProjects/globe_app/lib/widgets/latest_promo_card.dart';
import 'package:task_app/widgets/common/special_promo.dart';
import 'package:task_app/widgets/common/subscription_image_card.dart';
import 'package:task_app/widgets/dashboard_blue_banner.dart';
import 'package:task_app/widgets/dashboard_white-banner.dart';
import 'package:task_app/widgets/find_out_more.dart';
import 'package:task_app/widgets/globe_rewards_section.dart';
import 'package:task_app/widgets/offers_discount_card_section.dart';
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
            DashboardWhiteBanner(),
            Container(
              color: AppColors.COLOR_BLACK,
              padding: EdgeInsets.only(
                  left: 24.0, top: 40.0, bottom: 32.0, right: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    Strings.MYSUBSCRIPTIONS,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Container(
                    width: 270.0,
                    child: Text(
                      Strings.SUBSCRIPTIONS_TITLE,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()..shader = linearGradient),
                    ),
                  ),
                  MovieCardSection(),
                  MovieCardSection(),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Strings.YOU_MIGHT_ALSO_LIKE,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Container(
                          height: 168.0,
                          margin:EdgeInsets.only(top:12),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              AppOfferCard(),
                              AppOfferCard(),
                              AppOfferCard(),
                              AppOfferCard(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
