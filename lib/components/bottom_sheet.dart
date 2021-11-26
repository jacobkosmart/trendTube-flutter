import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:getx_bottom_nav_sample/common_controller.dart';
import 'package:getx_bottom_nav_sample/constants.dart';

class YoutubeBottomSheet extends GetView<CommonController> {
  const YoutubeBottomSheet({Key? key}) : super(key: key);

  // header 부분 위젯
  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Add",
          style: TextStyle(fontSize: 16),
        ),
        IconButton(
          onPressed: Get.back,
          icon: Icon(Icons.close),
        )
      ],
    );
  }

  // icon 리스트 위젯
  Widget _itemButton({
    String? icon,
    double? iconSized,
    String? label,
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kOpacity,
            ),
            child: Center(
              child: SizedBox(
                width: iconSized,
                height: iconSized,
                child: SvgPicture.asset("assets/icons/$icon"),
              ),
            ),
          ),
          SizedBox(width: 15),
          Text(label!),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // youtube 스타일 bottomSheet
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        height: 200,
        color: Colors.white,
        child: Column(
          children: [
            _header(),
            SizedBox(height: 10),
            _itemButton(
              icon: "upload.svg",
              iconSized: 17,
              label: "동영상 업로드",
              onTap: () {
                Get.defaultDialog(
                  title: "Comming Soon",
                  middleText: "곧 업데이트 됩니다.",
                  cancel: controller.closeBtn(),
                );
              },
            ),
            SizedBox(height: 10),
            _itemButton(
              icon: "broadcast.svg",
              iconSized: 25,
              label: "실시간 스트리밍 시작",
              onTap: () {
                Get.defaultDialog(
                  title: "Comming Soon",
                  middleText: "곧 업데이트 됩니다.",
                  cancel: controller.closeBtn(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
