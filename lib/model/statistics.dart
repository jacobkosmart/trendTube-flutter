// To parse this JSON data, do
//
//     final statistics = statisticsFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'statistics.freezed.dart';
part 'statistics.g.dart';

Statistics statisticsFromJson(String str) =>
    Statistics.fromJson(json.decode(str));

String statisticsToJson(Statistics data) => json.encode(data.toJson());

@freezed
class Statistics with _$Statistics {
  const factory Statistics({
    String? viewCount,
    String? likeCount,
    String? dislikeCount,
    String? favoriteCount,
    String? commentCount,
    String? subscriberCount,
  }) = _Statistics;

  factory Statistics.fromJson(Map<String, dynamic> json) =>
      _$StatisticsFromJson(json);
}
