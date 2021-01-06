import 'package:flutter/material.dart';
import 'package:task_app/resources/images.dart';

import 'package:task_app/resources/strings.dart';
import 'package:task_app/widgets/common/social_media_card.dart';

class LatestPromo extends StatelessWidget {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xFF3023AE), Color(0xFFC86DD7)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  @override
  Widget build(BuildContext context) {
    // variable to check for landscape
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Container(
      child: Column(
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
            height: isLandscape ? MediaQuery.of(context).size.height*0.41 : MediaQuery.of(context).size.height*0.247,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                // social media card displayed in horizontal view
                SocialMediaCard(bgImage: Images.LATEST_PROMO,icon:  Images.SPOTIFY_ICON,title: Strings.SPOTIFY_PREMIUM,),
                SocialMediaCard(bgImage: Images.LATEST_PROMO_1,icon:  Images.FACEBOOK_ICON,title: Strings.FACEBOOK_TITLE,),
                SocialMediaCard(bgImage: Images.LATEST_PROMO,icon:  Images.SPOTIFY_ICON,title: Strings.SPOTIFY_PREMIUM,),
                SocialMediaCard(bgImage: Images.LATEST_PROMO_1,icon:  Images.FACEBOOK_ICON,title: Strings.FACEBOOK_TITLE,),
                SocialMediaCard(bgImage: Images.LATEST_PROMO,icon:  Images.SPOTIFY_ICON,title: Strings.SPOTIFY_PREMIUM,),
                SocialMediaCard(bgImage: Images.LATEST_PROMO_1,icon:  Images.FACEBOOK_ICON,title: Strings.FACEBOOK_TITLE,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
