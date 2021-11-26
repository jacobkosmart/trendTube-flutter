/*
model sample

import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  factory Movie({
    required int id,
    required int year,
    required int numOfRatings,
    required int criticsReview,
    required int metascoreRating,
    required double rating,
    required String plot,
    required String title,
    required String poster,
    required String backdrop,
    required List<String> genra,
    required List<Map> cast,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}
*/