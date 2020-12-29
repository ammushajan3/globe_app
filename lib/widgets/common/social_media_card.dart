import 'package:flutter/material.dart';
import 'package:task_app/resources/images.dart';

import 'package:task_app/resources/strings.dart';

class SocialMediaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          image: new DecorationImage(
              image: new AssetImage(Images.LATEST_PROMO), fit: BoxFit.fill),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 0, 26),
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
                    Text(
                      Strings.PACKAGE_TITLE,
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          .apply(fontWeightDelta: -1),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    Text(Strings.PACKAGE_PRICE,
                        style: Theme.of(context).textTheme.headline5),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
