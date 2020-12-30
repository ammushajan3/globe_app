import 'package:flutter/material.dart';
import 'package:task_app/themes/color.dart';
import 'package:task_app/resources/strings.dart';
import 'package:task_app/widgets/offers_discount_card_section.dart';
import 'package:task_app/widgets/view_more_items.dart';
class FindOutMoreButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: BorderSide(color: AppColors.COLOR_BLACK)
      ),
      padding: EdgeInsets.all(17.0),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ViewMoreItems(),),);
      },
      color: AppColors.COLOR_WHITE,
      textColor: AppColors.COLOR_BLACK,
      child: Text(Strings.FIND_OUT_MORE),
    );
  }
}
