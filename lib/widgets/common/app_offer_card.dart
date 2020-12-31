import 'package:flutter/material.dart';

import 'package:task_app/resources/strings.dart';

class AppOfferCard extends StatelessWidget {
  final String logo;
  final Color backgroundColorOne;
  final Color backgroundColorTwo;
  AppOfferCard({
    this.logo,
    this.backgroundColorOne,
    this.backgroundColorTwo,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [backgroundColorOne, backgroundColorTwo],
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 31, 0, 26),
              child: Image.asset(
                logo,
                height: 43,
                width: 102,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(16, 14, 42, 14),
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: new LinearGradient(
                  colors: [
                    Color.fromRGBO(0, 0, 0, 0.9),
                    Color.fromRGBO(0, 0, 0, 0.6)
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Strings.SUBSCRIPE_FOR,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Text(
                    Strings.SUBSCRIPTION_RATE,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
