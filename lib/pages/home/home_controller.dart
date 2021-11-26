import 'package:get/get.dart';

class HomeController extends GetxController {
  // 편리하게 사용할 수 있게 get 방식으로 만들기
  static HomeController get to => Get.find();

  // controller 가 초기화 될때 실행 할 코드
  @override
  void onInit() {
    _videoload();
    // TODO: implement onInit
    super.onInit();
  }

  void _videoload() {}
}
