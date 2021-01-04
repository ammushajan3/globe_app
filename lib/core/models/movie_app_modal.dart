// To parse this JSON data, do
//
//     final movieApp = movieAppFromJson(jsonString);

import 'dart:convert';

MovieApp movieAppFromJson(String str) => MovieApp.fromJson(json.decode(str));

String movieAppToJson(MovieApp data) => json.encode(data.toJson());

class MovieApp {
  MovieApp({
    this.movieappcard,
  });

  List<Movieappcard> movieappcard;

  factory MovieApp.fromJson(Map<String, dynamic> json) => MovieApp(
    movieappcard: List<Movieappcard>.from(json["movieappcard"].map((x) => Movieappcard.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "movieappcard": List<dynamic>.from(movieappcard.map((x) => x.toJson())),
  };
}

class Movieappcard {
  Movieappcard({
    this.id,
    this.image,
    this.number,
    this.subdata,
  });

  int id;
  String image;
  String number;
  String subdata;

  factory Movieappcard.fromJson(Map<String, dynamic> json) => Movieappcard(
    id: json["id"],
    image: json["image"],
    number: json["number"],
    subdata: json["subdata"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
    "number": number,
    "subdata": subdata,
  };
}
