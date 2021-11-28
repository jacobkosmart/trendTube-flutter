import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_bottom_nav_sample/pages/home/video_controller.dart';
import 'package:intl/intl.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DetailController extends GetxController {
  VideoController? videoController;

  YoutubePlayerController? playerController;

  @override
  void onInit() {
    // 넘어오는 videoId 값 확인하기
    // print(Get.parameters["videoId"]);

    // Get find 를 사용해서 fetch 된 videoId 가져오기
    videoController = Get.find(tag: Get.parameters["videoId"]);
    // videoId 에 맞는 title 확인
    // print(videoController!.video.snippet!.title);

    // youtubeController
    playerController = YoutubePlayerController(
      initialVideoId: Get.parameters["videoId"]!,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: true,
        enableCaption: false,
      ),
    );
    // TODO: implement onInit
    super.onInit();
  }

  String? get title => videoController!.video.snippet!.title;
  String? get viewCount =>
      "조회수 ${videoController!.statistics.value.viewCount}회";
  String? get publishedTime => DateFormat("yyyy-MM-dd")
      .format(videoController!.video.snippet!.publishedAt!);
  String? get discription => videoController!.video.snippet!.description;
  String? get likeCount => "${videoController!.statistics.value.likeCount}";
  String? get dislikeCount =>
      "${videoController!.statistics.value.dislikeCount}";
  String? get youtuberThumbnailUrl => videoController!.youtuberThumbnailUrl;
  String? get youtuberName => videoController!.youtuber.value.snippet!.title;
  String? get subscriberCount {
    if (videoController!.youtuber.value.statistics!.subscriberCount == null) {
      return "";
    }
    return "구독자 ${videoController!.youtuber.value.statistics!.subscriberCount}";
  }
}
