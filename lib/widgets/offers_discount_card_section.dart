import 'package:flutter/material.dart';
import 'package:task_app/resources/strings.dart';

import 'package:task_app/widgets/common/offer_card.dart';

class OffersDiscountSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // variable to check for landscape
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Strings.HERE_IS_WHAT,
            style: Theme.of(context).textTheme.headline4,
          ),
          Container(
            height: isLandscape ? MediaQuery.of(context).size.height*0.46 : MediaQuery.of(context).size.height*0.28,
            margin: EdgeInsets.only(top: 13.0, bottom: 20.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                // offers card displayed in horizontal view
                OfferCard(),
                OfferCard(),
                OfferCard(),
                OfferCard(),
                OfferCard(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
