import 'package:flutter/material.dart';
import 'package:task_app/resources/images.dart';

import 'package:task_app/resources/strings.dart';
import 'package:task_app/themes/color.dart';

class OfferCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          image: new DecorationImage(
              image: new AssetImage(
                  Images.SHOE_COVER_IMG),
              fit: BoxFit.fill),
        ),
        padding:
        EdgeInsets.fromLTRB(16.0, 20.0, 55.0, 20),
        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [
            Image.asset(
              Images.ALDO_LOGO,
              height: 28.0,
              width: 64.0,
            ),
            SizedBox(height: 29.0),
            Text(Strings.NUMBER_POINTS,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  .apply(
                  color:
                  AppColors.COLOR_WHITE),),
            SizedBox(height: 27.0),
            Column(
              children: [
                Text(
                    Strings.DISCOUNT,
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .apply(
                        color:
                        AppColors.COLOR_WHITE)
                ),
                Text(Strings.OFFER, style: Theme.of(context)
                    .textTheme
                    .headline4
                    .apply(
                    color:
                    AppColors.COLOR_WHITE))
              ],
            )
          ],
        ),
      ),
    );
  }
}
