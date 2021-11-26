import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bottom_nav_sample/components/custom_appbar.dart';
import 'package:getx_bottom_nav_sample/components/video_widget.dart';

// GetView 를 만들어서 HomeController 에 있는 변수를 controller.변수명 or method 를 가져와서 사용할 수 있음
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
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
                    // GetX named router
                    Get.toNamed("/detail/12123123");
                  },
                  child: VideoWidget(),
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
