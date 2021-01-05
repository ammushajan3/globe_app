import 'package:flutter/material.dart';
import 'package:task_app/resources/images.dart';

import 'package:task_app/resources/strings.dart';
import 'package:task_app/widgets/common/subscription_image_card.dart';

class MovieCardSection extends StatelessWidget {
  final String appLogo;
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xFF3023AE), Color(0xFFC86DD7)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  MovieCardSection({
    this.appLogo,
  });
  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Column(
      children: [
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(Strings.POPULAR_ON,style:Theme.of(context).textTheme.headline5),
                Image.asset(
                  appLogo,
                  height: 21.0,
                  width: 54.0,
                ),
              ],
            ),
            Text(
              Strings.VIEW_ALL,
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        )),
        Container(
          height: isLandscape ? MediaQuery.of(context).size.height*0.41 : MediaQuery.of(context).size.height*0.25,
          margin: EdgeInsets.only(top: 12.0, bottom: 32.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              // subscription image card displayed in horizontal view
              SubscriptionImageCard(showsImage:Images.STRANGER_THINGS,),
              SubscriptionImageCard(showsImage:Images.THIRTEEN_REASONS_WHY),
              SubscriptionImageCard(showsImage:Images.STRANGER_THINGS),
              SubscriptionImageCard(showsImage:Images.THIRTEEN_REASONS_WHY),
              SubscriptionImageCard(showsImage:Images.STRANGER_THINGS),
            ],
          ),
        )
      ],
    );
  }
}
