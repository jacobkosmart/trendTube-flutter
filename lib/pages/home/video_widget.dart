import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bottom_nav_sample/constants.dart';
import 'package:getx_bottom_nav_sample/model/video.dart';
import 'package:getx_bottom_nav_sample/pages/home/video_controller.dart';
import 'package:intl/intl.dart';

class VideoWidget extends StatefulWidget {
  final Video video;
  const VideoWidget({Key? key, required this.video}) : super(key: key);

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  VideoController? _videoController;

  @override
  void initState() {
    // Controller 생성 개별적 instance 생성
    _videoController =
        Get.put(VideoController(video: widget.video), tag: widget.video.id);

    super.initState();
  }

  Widget _thumnail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: kOpacity,
          // title
          child: CachedNetworkImage(
            imageUrl: widget.video.snippet!.thumbnails!.medium!.url!,
            placeholder: (context, url) => Container(
              height: 230,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
            fit: BoxFit.fitWidth,
          ),
        ),
      ],
    );
  }

  Widget _simpleDetailinfo() {
    return Container(
      padding: const EdgeInsets.only(left: 10, bottom: 10),
      child: Row(
        children: [
          Obx(
            () => CircleAvatar(
              radius: 30,
              backgroundColor: kOpacity,
              backgroundImage:
                  Image.network(_videoController!.youtuberThumbnailUrl!).image,
            ),
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // title 영역만 2줄로 표시하기 위해서 Expanded 영역에 maxline: 2 로 설정
                    Expanded(
                      child: Text(
                        widget.video.snippet!.title!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    IconButton(
                      alignment: Alignment.topCenter,
                      onPressed: () {},
                      icon: Icon(Icons.more_vert, size: 18),
                    )
                  ],
                ),
                Text(
                  widget.video.snippet!.channelTitle!,
                  style: kH4.copyWith(color: kOpacity),
                ),
                Row(
                  children: [
                    Obx(
                      () => Text(
                        "조회수 ${_videoController!.statistics.value.viewCount}회",
                        style: kH4.copyWith(color: kOpacity),
                      ),
                    ),
                    Text(" · "),
                    Text(
                      DateFormat("yyyy-MM-dd")
                          .format(widget.video.snippet!.publishedAt!),
                      style: kH4.copyWith(color: kOpacity),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _thumnail(),
          _simpleDetailinfo(),
        ],
      ),
    );
  }
}
