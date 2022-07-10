import 'dart:convert';

import 'package:peliculas_app/models/models.dart';

class PopularResponse {
  PopularResponse({
    required this.page,
    required this.result,
    required this.totalPages,
    required this.totalResult,
  });

  int page;
  List<Movie> result;
  int totalPages;
  int totalResult;

  factory PopularResponse.fromJson(String str) =>
      PopularResponse.formMap(json.decode(str));

  factory PopularResponse.formMap(Map<String, dynamic> json) => PopularResponse(
        page: json["page"],
        result: List<Movie>.from(json["results"].map((x) => Movie.fromMap(x))),
        totalPages: json["total_pages"],
        totalResult: json["total_results"],
      );
}
