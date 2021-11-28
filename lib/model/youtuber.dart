import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:getx_bottom_nav_sample/model/statistics.dart';
import 'package:getx_bottom_nav_sample/model/video.dart';

part 'youtuber.freezed.dart';
part 'youtuber.g.dart';

@freezed
class Youtuber with _$Youtuber {
  factory Youtuber({
    Snippet? snippet,
    Statistics? statistics,
  }) = _Youtuber;

  factory Youtuber.fromJson(Map<String, dynamic> json) => Youtuber(
        snippet: Snippet.fromJson(json["snippet"]),
        statistics: Statistics.fromJson(json["statistics"]),
      );
}
