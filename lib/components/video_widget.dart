import 'package:flutter/material.dart';
import 'package:getx_bottom_nav_sample/constants.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({Key? key}) : super(key: key);

  Widget _thumnail() {
    return Container(
      height: 250,
      color: kOpacity,
    );
  }

  Widget _simpleDetailinfo() {
    return Container(
      padding: const EdgeInsets.only(left: 10, bottom: 15, top: 5),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: kOpacity,
            backgroundImage: Image.network(
                    "https://jacobko.info/assets/images/Jacob_avatar.png")
                .image,
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // title 영역만 2줄로 표시하기 위해서 Expanded 영역에 maxline: 2 로 설정
                    Expanded(
                      child: Text(
                        "JacobInfo 유튜브 다시보기, JacobInfo 유튜브 다시보기JacobInfo 유튜브 다시보기JacobInfo 유튜브 다시보기JacobInfo 유튜브 다시보기JacobInfo 유튜브 다시보기JacobInfo 유튜브 다시보기JacobInfo 유튜브 다시보기JacobInfo 유튜브 다시보기JacobInfo 유튜브 다시보기JacobInfo 유튜브 다시보기JacobInfo 유튜브 다시보기JacobInfo 유튜브 다시보기JacobInfo 유튜브 다시보기JacobInfo 유튜브 다시보기JacobInfo 유튜브 다시보기JacobInfo 유튜브 다시보기JacobInfo 유튜브 다시보기JacobInfo 유튜브 다시보기",
                        maxLines: 2,
                      ),
                    ),
                    IconButton(
                      alignment: Alignment.topCenter,
                      onPressed: () {},
                      icon: Icon(Icons.more_vert, size: 18),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "유튜브 이름",
                      style: kH4.copyWith(color: kOpacity),
                    ),
                    Text(" · "),
                    Text(
                      "조회수 1000회",
                      style: kH4.copyWith(color: kOpacity),
                    ),
                    Text(" · "),
                    Text(
                      "2021-02-13",
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
