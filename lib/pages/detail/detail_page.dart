import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:getx_bottom_nav_sample/constants.dart';
import 'package:getx_bottom_nav_sample/pages/detail/detail_controller.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeDetail extends GetView<DetailController> {
  const YoutubeDetail({Key? key}) : super(key: key);

  Widget _titleZone() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            controller.title!,
            style: kH2,
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                controller.viewCount!,
                style: kH3.copyWith(color: kOpacity),
              ),
              Text(" · "),
              Text(
                controller.publishedTime!,
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
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Text(
        controller.discription!,
        style: kH3,
        maxLines: 8,
        overflow: TextOverflow.ellipsis,
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
        _buttonsOne(iconPath: "like", text: controller.likeCount),
        _buttonsOne(iconPath: "dislike", text: controller.dislikeCount),
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
              controller.youtuberThumbnailUrl!,
            ).image,
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(controller.youtuberName!, style: kH1),
                Text("${controller.subscriberCount!}", style: kH3),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              "즐겨찾기 추가",
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
          _discriptionZone(),
          _buttonsZone(),
          SizedBox(height: 20),
          _ownerZone(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            YoutubePlayer(
              controller: controller.playerController!,
              showVideoProgressIndicator: false,
              progressIndicatorColor: Colors.blueAccent,
              // topActions: <Widget>[
              //   const SizedBox(width: 8.0),
              //   Expanded(
              //     child: Text(
              //       controller.playerController!.metadata.title,
              //       style: const TextStyle(
              //         color: Colors.white,
              //         fontSize: 18.0,
              //       ),
              //       overflow: TextOverflow.ellipsis,
              //       maxLines: 1,
              //     ),
              //   ),
              //   IconButton(
              //     icon: const Icon(
              //       Icons.settings,
              //       color: Colors.white,
              //       size: 25.0,
              //     ),
              //     onPressed: () {},
              //   ),
              // ],
              // bottomActions: [
              //   const SizedBox(width: 14.0),
              //   CurrentPosition(),
              //   const SizedBox(width: 8.0),
              //   ProgressBar(),
              //   RemainingDuration(),
              //   const PlaybackSpeedButton(),
              // ],
              onReady: () {},
              onEnded: (data) {},
            ),
            Expanded(
              child: _description(),
            )
          ],
        ),
      ),
    );
  }
}
