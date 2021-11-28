import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bottom_nav_sample/components/custom_appbar.dart';
import 'package:getx_bottom_nav_sample/pages/home/video_widget.dart';
import 'package:getx_bottom_nav_sample/pages/home/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => CustomScrollView(
          controller: controller.scrollController,
          slivers: [
            SliverAppBar(
              centerTitle: false,
              backgroundColor: Colors.white,
              title: CustomAppBar(),
              floating: true,
              snap: true,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // 선택된 container 비디오 ID 값 named parameter 값으로 넘겨 주기
                      Get.toNamed(
                        "/detail/${controller.youtubeResult.value.items![index].id}",
                      );
                    },
                    child: VideoWidget(
                      video: controller.youtubeResult.value.items![index],
                    ),
                  );
                },
                childCount: controller.youtubeResult.value.items == null
                    ? 0
                    : controller.youtubeResult.value.items!.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
