import 'package:flutter/material.dart';

import 'package:task_app/resources/strings.dart';
import 'package:task_app/themes/color.dart';
import 'package:task_app/widgets/common/balance_card.dart';
import 'package:task_app/widgets/common/recommended_plans_card.dart';

class DashboardBlueBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(left: 14.0,top:32.0,bottom: 33.0),
      color: AppColors.COLOR_ICE_BLUE,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 154.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                BalanceCard(),
                BalanceCard(),
                BalanceCard(),
                BalanceCard(),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top:53.0,bottom:13.0,left:8.0,right:24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(Strings.RECOMMENDED,style:Theme.of(context).textTheme.subtitle1,),
                      Text(Strings.VIEW_ALL,style: Theme.of(context).textTheme.headline6,),
                    ],
                  ),
                ),
                Container(
                  height: 65.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      RecommendedPlansCard(),
                      RecommendedPlansCard(),
                      RecommendedPlansCard(),
                      RecommendedPlansCard(),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
