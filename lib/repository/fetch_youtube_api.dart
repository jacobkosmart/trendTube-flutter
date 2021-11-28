import 'package:get/get.dart';
import 'package:getx_bottom_nav_sample/model/statistics.dart';
import 'package:getx_bottom_nav_sample/model/youtube_result.dart';
import 'package:getx_bottom_nav_sample/model/youtuber.dart';

class YoutubeRepository extends GetConnect {
  static YoutubeRepository get to => Get.find();

  @override
  void onInit() {
    httpClient.baseUrl = "https://www.googleapis.com";
    // TODO: implement onInit
    super.onInit();
  }

  // Homepage : videos title, thumbnails, channels name, 업로드 날짜 fetch
  Future<YoutubeVideoResult?> loadVideos(String nextPageToken) async {
    String url =
        "/youtube/v3/videos?part=snippet&chart=mostPopular&maxResults=10&regionCode=KR&key=AIzaSyBCSvPVnJPsMeLzYwUWpER4Z-jzDQgsWOk&pageToken=$nextPageToken";

    // fetch data
    final response = await get(url);
    if (response.statusCode != 200) {
      return Future.error(response.statusText!);
    } else {
      // fetch 된 data items 가 null 이 아니거나, list 의 길이가 0이 아닐때만 parsing 이 되도록함
      if (response.body["items"] != null && response.body["items"].length > 0) {
        return YoutubeVideoResult.fromJson(response.body);
      }
      // print(response.body["items"]);
    }
  }

  // Home : 영상의 조회수 불러오기
  Future<Statistics?> getVideoInfoById(String videoId) async {
    String url =
        "/youtube/v3/videos?part=statistics&key=AIzaSyBCSvPVnJPsMeLzYwUWpER4Z-jzDQgsWOk&id=$videoId";

    // fetch data
    final response = await get(url);
    if (response.statusCode != 200) {
      return Future.error(response.statusText!);
    } else {
      // fetch 된 data items 가 null 이 아니거나, list 의 길이가 0이 아닐때만 parsing 이 되도록함
      if (response.body["items"] != null && response.body["items"].length > 0) {
        Map<String, dynamic> data = response.body["items"][0];
        return Statistics.fromJson(data["statistics"]);
      }
    }
  }

  // Home: channel thumbnails, 구독자 수
  Future<Youtuber?> getYoutuberInfoById(String channelId) async {
    String url =
        "/youtube/v3/channels?part=statistics,snippet&key=AIzaSyBCSvPVnJPsMeLzYwUWpER4Z-jzDQgsWOk&id=$channelId";

    // fetch data
    final response = await get(url);
    if (response.statusCode != 200) {
      return Future.error(response.statusText!);
    } else {
      // fetch 된 data items 가 null 이 아니거나, list 의 길이가 0이 아닐때만 parsing 이 되도록함
      if (response.body["items"] != null && response.body["items"].length > 0) {
        Map<String, dynamic> data = response.body["items"][0];
        return Youtuber.fromJson(data);
      }
    }
  }
}
