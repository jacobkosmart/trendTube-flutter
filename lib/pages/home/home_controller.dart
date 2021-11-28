import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_bottom_nav_sample/model/youtube_result.dart';
import 'package:getx_bottom_nav_sample/repository/fetch_youtube_api.dart';

class HomeController extends GetxController {
  // 편리하게 사용할 수 있게 get 방식으로 만들기
  static HomeController get to => Get.find();

  // Data 변수 선언
  Rx<YoutubeVideoResult> youtubeResult = YoutubeVideoResult(items: []).obs;

  // infiniteScroll 을 위한 ScrollController
  ScrollController scrollController = ScrollController();

  // controller 가 초기화 될때 실행 할 코드
  @override
  void onInit() {
    _videoLoad();
    _event();
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onClose() {
    scrollController.dispose();
    // TODO: implement onClose
    super.onClose();
  }

  // infiniteScroll event 처리
  void _event() {
    scrollController.addListener(
      () {
        // print(scrollController.position.pixels);
        // print(scrollController.position.maxScrollExtent);
        // position 위치 값이 맨 마지막 위치와 동일 할 경우 와 nextPageToken 이 비어 있지 않는 경우에만 next page token 을 사용해서 다음 fetch data 호출함
        if (scrollController.position.pixels ==
                scrollController.position.maxScrollExtent &&
            youtubeResult.value.nextPageToken != "") {
          _videoLoad();
        }
      },
    );
  }

  // 로드된 데이터 가져오기
  void _videoLoad() async {
    YoutubeVideoResult? youtubeVideoResult = await YoutubeRepository.to
        .loadVideos(youtubeResult.value.nextPageToken ?? "");
    // print(youtubeVideoResult!.items!.length);

    // 예외처리 후,
    if (youtubeVideoResult != null &&
        youtubeVideoResult.items != null &&
        youtubeVideoResult.items!.isNotEmpty) {
      // nextPageToken 이 호출 될때 마다 이전 item 을 누적시키면서 업데이트 시켜 주는 infinityScroll logic
      youtubeResult.update((youtube) {
        youtube!.nextPageToken = youtubeVideoResult.nextPageToken;
        youtube.items!.addAll(youtubeVideoResult.items!);
      });
    }
  }
}
