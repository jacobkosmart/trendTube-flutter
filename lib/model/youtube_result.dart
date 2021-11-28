import 'package:getx_bottom_nav_sample/model/video.dart';

class YoutubeVideoResult {
  int? totalResults;
  int? resultsPerPage;
  String? nextPageToken;
  List<Video>? items;

  YoutubeVideoResult(
      {this.totalResults, this.resultsPerPage, this.nextPageToken, this.items});

  factory YoutubeVideoResult.fromJson(Map<String, dynamic> json) =>
      YoutubeVideoResult(
        totalResults: json["pageInfo"]["totalResults"],
        resultsPerPage: json["pageInfo"]["resultsPerPage"],
        // nextPageToken 이 없을 경우에는 빈값으로 처리하기
        nextPageToken: json["nextPageToken"] ?? "",
        items: List<Video>.from(
          json["items"].map(
            (data) => Video.fromJson(data),
          ),
        ),
      );
}
