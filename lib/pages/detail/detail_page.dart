import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:getx_bottom_nav_sample/constants.dart';
import 'package:getx_bottom_nav_sample/pages/detail/detail_controller.dart';

class YoutubeDetail extends GetView<DetailController> {
  const YoutubeDetail({Key? key}) : super(key: key);

  Widget _titleZone() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "JacobInfo 유튜브 다시보기",
            style: kH2,
          ),
          Row(
            children: [
              Text(
                "조회수 1000회",
                style: kH3.copyWith(color: kOpacity),
              ),
              Text(" · "),
              Text(
                "2021-02-13",
                style: kH3.copyWith(color: kOpacity),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _discriptionZone() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Text(
        "안녕하세요 간단한 설명입니다",
        style: kH3,
      ),
    );
  }

  Widget _buttonsOne({
    String? iconPath,
    String? text,
  }) {
    return Column(
      children: [
        SvgPicture.asset("assets/icons/$iconPath.svg"),
        Text(text!),
      ],
    );
  }

  Widget _buttonsZone() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buttonsOne(iconPath: "like", text: "1000"),
        _buttonsOne(iconPath: "dislike", text: "0"),
        _buttonsOne(iconPath: "share", text: "공유"),
        _buttonsOne(iconPath: "save", text: "저장"),
      ],
    );
  }

  Widget _ownerZone() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: kOpacity,
            backgroundImage: Image.network(
              "https://jacobko.info/assets/images/Jacob_avatar.png",
            ).image,
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                Text("Jacob 유튜브", style: kH1),
                Text("구독자 10000", style: kH3),
              ],
            ),
          ),
          GestureDetector(
            child: Text(
              "구독",
              style: kH2.copyWith(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }

  Widget _description() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _titleZone(),
          Divider(),
          _discriptionZone(),
          _buttonsZone(),
          SizedBox(height: 20),
          Divider(),
          _ownerZone(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            color: kOpacity,
          ),
          Expanded(
            child: _description(),
          )
        ],
      ),
    );
  }
}
