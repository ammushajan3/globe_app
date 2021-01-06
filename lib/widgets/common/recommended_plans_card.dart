import 'package:flutter/material.dart';
import 'package:task_app/resources/strings.dart';
import 'package:task_app/themes/color.dart';

class RecommendedPlansCard extends StatelessWidget {
  final String planName;
  final String planValidity;
  RecommendedPlansCard({this.planName,this.planValidity});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        color: AppColors.COLOR_WARM_BLUE,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(planName,style:Theme.of(context).textTheme.bodyText2),
              Text(planValidity,style: Theme.of(context).textTheme.caption,),
            ],
          ),
        ),
      ),
    );
  }
}
