import 'package:flutter/material.dart';
import 'package:task_app/resources/strings.dart';

import 'package:task_app/widgets/common/offer_card.dart';

class OffersDiscountSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Strings.HERE_IS_WHAT,
            style: Theme.of(context).textTheme.headline4,
          ),
          Container(
            height: 187.0,
            margin: EdgeInsets.only(top: 13.0, bottom: 20.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
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
