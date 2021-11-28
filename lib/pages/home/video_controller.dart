import 'package:get/get.dart';
import 'package:getx_bottom_nav_sample/model/statistics.dart';
import 'package:getx_bottom_nav_sample/model/video.dart';
import 'package:getx_bottom_nav_sample/model/youtuber.dart';
import 'package:getx_bottom_nav_sample/repository/fetch_youtube_api.dart';

class VideoController extends GetxController {
  Video video;

  VideoController({required this.video});

  Rx<Statistics> statistics = Statistics().obs;
  Rx<Youtuber> youtuber = Youtuber().obs;

  @override
  void onInit() async {
    // repository 호출
    Statistics? loadStatistics =
        await YoutubeRepository.to.getVideoInfoById(video.id!);
    statistics(loadStatistics);
    Youtuber? loadYoutuber = await YoutubeRepository.to
        .getYoutuberInfoById(video.snippet!.channelId!);
    youtuber(loadYoutuber);
    // TODO: implement onInit
    super.onInit();
  }

  // 최초 로딩 중일때 loading bar 호출
  String? get titleThumbnailUrl {
    if (youtuber.value.snippet == null) {
      return "https://4.bp.blogspot.com/-tqB3UP6KYaM/VItDu0F9kdI/AAAAAAAAATs/QB0X4AqWWY0/s1600/spinningwheel.gif";
    }
    return youtuber.value.snippet!.thumbnails!.medium!.url;
  }

  String? get youtuberThumbnailUrl {
    if (youtuber.value.snippet == null) {
      return "https://4.bp.blogspot.com/-tqB3UP6KYaM/VItDu0F9kdI/AAAAAAAAATs/QB0X4AqWWY0/s1600/spinningwheel.gif";
    }
    return youtuber.value.snippet!.thumbnails!.medium!.url;
  }
}
