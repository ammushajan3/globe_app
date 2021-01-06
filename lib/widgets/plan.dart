import 'package:flutter/material.dart';
import 'package:task_app/resources/strings.dart';
import 'package:task_app/themes/color.dart';

class Plan extends StatefulWidget {
  @override
  PlanState createState() {
    return new PlanState();
  }
}

class PlanState extends State<Plan> {
  // variable to check if the drop down is pressed or not
  bool pressed = false;
  void _openModel()
  {
    showDialog(context: context,builder: (context) =>
        Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          child: Container(
            width: 100,
            height: 100,
            padding: EdgeInsets.all(16),
            child:Column(
              children: [
                Text('Edit your number',style: Theme.of(context).textTheme.subtitle2,),
                Text(
                  Strings.NUMBER,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ],
            )

          )
        ),
    );
  }
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
            style: Theme.of(context).textTheme.subtitle1,
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
                  IconButton(
                    icon: pressed
                        ? Icon(Icons.keyboard_arrow_up,
                            color: AppColors.COLOR_BLACK)
                        : Icon(Icons.keyboard_arrow_down_outlined,
                            color: AppColors.COLOR_BLACK),
                    onPressed: () {
                      // condition to toggle the drop down
                      setState(() {
                        pressed = !pressed;
                        print(pressed);
                      });
                    },
                  ),

                ],
              ),
              IconButton(icon: Icon(Icons.add), onPressed: _openModel,color: AppColors.COLOR_BLACK)
            ],
          ),
          pressed
              ? Text(Strings.PROMO_NAME,
            style: Theme.of(context).textTheme.headline6,
          )
              : Text(''),
        ],
      ),
    );
  }
}
