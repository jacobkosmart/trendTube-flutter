import 'package:get/instance_manager.dart';
import 'package:getx_bottom_nav_sample/common_controller.dart';
import 'package:getx_bottom_nav_sample/pages/add/add_controller.dart';
import 'package:getx_bottom_nav_sample/pages/dashboard/dashboard_controller.dart';
import 'package:getx_bottom_nav_sample/pages/home/home_controller.dart';
import 'package:getx_bottom_nav_sample/repository/fetch_youtube_api.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(YoutubeRepository(), permanent: true);
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<AddController>(() => AddController());
    Get.lazyPut<CommonController>(() => CommonController());
  }
}
