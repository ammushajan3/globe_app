import 'package:flutter/material.dart';
import 'package:task_app/resources/images.dart';

import 'package:task_app/resources/strings.dart';
import 'package:task_app/themes/color.dart';
import 'package:task_app/widgets/common/offer_card.dart';
import 'file:///C:/Users/Admin/AndroidStudioProjects/globe_app/lib/widgets/latest_promo_card.dart';
import 'package:task_app/widgets/common/special_promo.dart';
import 'package:task_app/widgets/dashboard_blue_banner.dart';
import 'package:task_app/widgets/find_out_more.dart';
import 'package:task_app/widgets/globe_rewards_section.dart';
import 'package:task_app/widgets/offers_discount_card_section.dart';
import 'package:task_app/widgets/plan.dart';

class DashboardWhiteBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          OffersDiscountSection(),
          FindOutMoreButton(),
        ],
      ),
    );
  }
}
