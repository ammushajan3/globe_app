import 'package:flutter/material.dart';
import 'package:task_app/core/services/movie_app_services.dart';
import 'package:task_app/widgets/common/app_offer_card.dart';
import 'package:task_app/themes/color.dart';
class MovieAppContainer extends StatefulWidget {
  @override
  _MovieAppContainerState createState() => _MovieAppContainerState();
}

class _MovieAppContainerState extends State<MovieAppContainer> {
  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Container(
      child: FutureBuilder(
          future: Services().getMovieAppData(context),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Container(
                  height: isLandscape ? MediaQuery.of(context).size.height*0.41 : MediaQuery.of(context).size.height*0.247,
                  margin: EdgeInsets.only(top: 12),
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    for (var index = 0;
                    index < snapshot.data.movieappcard.length;
                    index++)
                    // app offer card displayed in horizontal view
                      AppOfferCard(
                        logo: snapshot.data.movieappcard[index].image,
                        backgroundColorOne: AppColors.COLOR_PURPLE,
                        backgroundColorTwo: AppColors.COLOR_PURPLE,
                      ),
                  ]));
            } else if (snapshot.hasError) {
              return new Text("${snapshot.error}");
            }
            return new CircularProgressIndicator();
          }),
    );
  }
}
