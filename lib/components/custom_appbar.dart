import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bottom_nav_sample/common_controller.dart';
import 'package:getx_bottom_nav_sample/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomAppBar extends GetView<CommonController> {
  const CustomAppBar({Key? key}) : super(key: key);

  Widget _logo() {
    return Container(
      child: Image.asset(
        'assets/images/YouTube-Logo.png',
        width: 120,
      ),
    );
  }

  Widget _actions() {
    return Row(
      children: [
        // GestureDetector(
        //   onTap: () {},
        //   child: Container(
        //     width: 30,
        //     height: 30,
        //     child: SvgPicture.asset("assets/icons/search.svg"),
        //   ),
        // ),
        IconButton(
          onPressed: () {
            Get.defaultDialog(
              title: "Comming Soon",
              middleText: "곧 업데이트 됩니다.",
              cancel: controller.closeBtn(),
            );
          },
          icon: Icon(
            Icons.search,
            color: Colors.black,
            size: 30,
          ),
        ),
        SizedBox(width: 15),
        GestureDetector(
          onTap: () async {
            await launch(
              "https://jacobko.info/",
              // 안드로이드 webview 연결 (인앱)
              forceWebView: true,
              // iOS Safari webview 연결 (인앱)
              forceSafariVC: true,
            );
          },
          child: CircleAvatar(
            backgroundColor: kOpacity,
            backgroundImage: Image.network(
                    "https://jacobko.info/assets/images/Jacob_avatar.png")
                .image,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _logo(),
          _actions(),
        ],
      ),
    );
  }
}
