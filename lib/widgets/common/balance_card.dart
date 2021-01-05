import 'package:flutter/material.dart';
import 'package:task_app/resources/images.dart';
import 'package:task_app/themes/color.dart';

class BalanceCard extends StatelessWidget {
  final String balance;
  final String dataBalance;
  final String totalBalance;
  BalanceCard({this.balance, this.dataBalance, this.totalBalance});
  @override
  Widget build(BuildContext context) {
    return Container(
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
                balance,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(dataBalance, style: Theme.of(context).textTheme.bodyText1),
              SizedBox(
                height: 12.0,
              ),
              Text(totalBalance, style: Theme.of(context).textTheme.subtitle1),
            ],
          ),
        ),
      ),
    );
  }
}
