import 'package:flutter/material.dart';



class SubscriptionImageCard extends StatelessWidget {
  final String showsImage;
  SubscriptionImageCard(
  {
    this.showsImage,
}
);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Container(
          height: 190.0,
          width: 140.0,
          decoration: BoxDecoration(
            image: new DecorationImage(
                image: new AssetImage(showsImage), fit: BoxFit.fill),
          )
      ),
    );
  }
}
