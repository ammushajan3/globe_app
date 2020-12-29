import 'package:flutter/material.dart';
import 'package:task_app/resources/images.dart';
import 'package:task_app/resources/strings.dart';
import 'package:task_app/themes/color.dart';
class BalanceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 136.0,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        margin: EdgeInsets.only(
          left: 6.0,
          right: 6.0,
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 11.0,
                backgroundColor: AppColors.COLOR_WHITE,
                child: Image(image: AssetImage(Images.VIDEO)),
              ),
              SizedBox(height: 28.0),
              Text(
                Strings.DATA_BALANCE,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(Strings.REMAINING_DATA,
                  style: Theme.of(context).textTheme.bodyText1),
              SizedBox(height: 12.0,),
              Text(Strings.TOTAL_DATA,
                  style: Theme.of(context).textTheme.subtitle1),
            ],
          ),
        ),
      ),
    );
  }
}
