import 'package:flutter/material.dart';
import 'package:task_app/resources/strings.dart';
import 'package:task_app/themes/color.dart';

class Plan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: AppColors.COLOR_WHITE,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Strings.PLAN_NAME,
            style:Theme.of(context).textTheme.subtitle1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    Strings.NUMBER,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  Icon(Icons.keyboard_arrow_down_outlined,
                      color: AppColors.COLOR_BLACK)
                ],
              ),
              Icon(Icons.add, color: AppColors.COLOR_BLACK),
            ],
          ),
        ],
      ),
    );
  }
}
