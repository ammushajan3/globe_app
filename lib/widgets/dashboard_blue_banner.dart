import 'package:flutter/material.dart';

import 'package:task_app/resources/strings.dart';
import 'package:task_app/themes/color.dart';
import 'package:task_app/widgets/common/balance_card.dart';
import 'package:task_app/widgets/common/recommended_plans_card.dart';

class DashboardBlueBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // variable to check for landscape
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return  LayoutBuilder(builder: (ctx,constraint){
      return Container(
        padding: EdgeInsets.only(left: 14.0,top:32.0,bottom: 33.0),
        color: AppColors.COLOR_ICE_BLUE,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // media query to change the height for landscape and portrait
              height: isLandscape ? MediaQuery.of(context).size.height*0.4 : MediaQuery.of(context).size.height*0.22,

              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // balance card displayed in horizontal view
                  BalanceCard(balance: Strings.DATA_BALANCE,dataBalance: Strings.REMAINING_DATA,totalBalance: Strings.TOTAL_DATA,),
                  BalanceCard(balance: Strings.LOAD_BALANCE,dataBalance: Strings.PACKAGE_PRICE,totalBalance: Strings.VALID_TILL),
                  BalanceCard(balance: Strings.DATA_BALANCE,dataBalance: Strings.REMAINING_DATA,totalBalance: Strings.TOTAL_DATA),
                  BalanceCard(balance: Strings.LOAD_BALANCE,dataBalance: Strings.PACKAGE_PRICE,totalBalance: Strings.VALID_TILL),
                  BalanceCard(balance: Strings.DATA_BALANCE,dataBalance: Strings.REMAINING_DATA,totalBalance: Strings.TOTAL_DATA),
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
                    height:  isLandscape ? MediaQuery.of(context).size.height*0.17: MediaQuery.of(context).size.height*0.1,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        // recommended plans  displayed in horizontal view
                        RecommendedPlansCard(),
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
    },);

  }
}
