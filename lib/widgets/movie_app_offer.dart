import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_app/container/movie_app_container.dart';
import 'package:task_app/resources/images.dart';

import 'package:task_app/resources/strings.dart';
import 'package:task_app/themes/color.dart';
import 'package:task_app/widgets/common/app_offer_card.dart';
import 'package:task_app/widgets/common/movie_card_section.dart';

class MovieAppOfferSection extends StatelessWidget {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xFF3023AE), Color(0xFFC86DD7)],
  ).createShader(
    Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.COLOR_BLACK,
      padding:
          EdgeInsets.only(left: 24.0, top: 40.0, bottom: 32.0, right: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            Strings.MYSUBSCRIPTIONS,
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(height:20.0),
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
          SizedBox(height: 24.0,),
          MovieCardSection(appLogo: Images.NETFLIX_LOGO,),
          MovieCardSection(appLogo: Images.PRIME_LOGO,),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Strings.YOU_MIGHT_ALSO_LIKE,
                  style: Theme.of(context).textTheme.headline5,
                ),
                MovieAppContainer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
