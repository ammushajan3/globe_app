import 'package:flutter/material.dart';
import 'package:task_app/resources/images.dart';

import 'package:task_app/themes/color.dart';


class SpecialPromo extends StatelessWidget {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xFF3023AE), Color(0xFFC86DD7)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  final Shader promoTitleGradient = LinearGradient(
    colors: <Color>[Color(0xFFFFFFFF), Color(0xFFFFB2C6)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  final Shader buttonGradient = LinearGradient(
    colors: <Color>[Color.fromRGBO(0, 0, 0, 0.9), Color.fromRGBO(0, 0, 0, 0.6)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  final String promoTitle;
  final String planName;
  final String planTitle;
  final String planSubTitle;
  final String buttonTitle;
  SpecialPromo(
      {this.promoTitle,
      this.planName,
      this.planTitle,
      this.planSubTitle,
      this.buttonTitle});
  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          promoTitle,
          style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              foreground: Paint()..shader = linearGradient),
        ),
        SizedBox(height: 12.0),
        Container(
          padding:EdgeInsets.only(left:isLandscape
              ? MediaQuery.of(context).viewPadding.left + 50: MediaQuery.of(context).viewPadding.left,right:isLandscape
              ? MediaQuery.of(context).viewPadding.right + 50: MediaQuery.of(context).viewPadding.right ),
          height:  isLandscape ? MediaQuery.of(context).size.height*0.39 : MediaQuery.of(context).size.height*0.235,
          child: Card(
            child: Container(
              decoration: BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage(Images.SPECIAL_PROMO),
                    fit: BoxFit.fill),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 17.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(planName,
                            style: Theme.of(context).textTheme.headline5),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          planTitle,
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              foreground: Paint()..shader = promoTitleGradient),
                        ),
                        Text(
                          planSubTitle,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .apply(color: AppColors.COLOR_WHITE),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    height: 54,
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: new LinearGradient(
                        colors: [
                          Color.fromRGBO(0, 0, 0, 0.9),
                          Color.fromRGBO(0, 0, 0, 0.6)
                        ],
                      ),
                    ),
                    child: FlatButton(
                      padding: EdgeInsets.all(0.0),
                      onPressed: () {
                        /*...*/
                      },
                      child: Row(
                        children: [
                          Text(buttonTitle,
                              style: Theme.of(context).textTheme.headline5),
                          Icon(
                            Icons.chevron_right_sharp,
                            color: AppColors.COLOR_WHITE,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
