import 'dart:convert';

import 'dart:async' show Future;
import 'package:flutter/cupertino.dart';
import 'package:task_app/core/modal/movie_app_modal.dart';

class Services{
  Future<MovieApp> getMovieAppData(BuildContext context) async {
    String jsonString =
    await DefaultAssetBundle.of(context).loadString('mock/movie_app.json');
    Map movieApp = jsonDecode(jsonString);
    final movieAppList = MovieApp.fromJson(movieApp);
    return movieAppList;
  }
}