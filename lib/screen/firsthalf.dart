import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_challenge_1/Widgets/buttonandicon.dart';
import 'package:ui_challenge_1/Widgets/circle_icon.dart';
import 'package:ui_challenge_1/Widgets/svg_icon.dart';

class FirstHalf extends StatelessWidget {
  const FirstHalf({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      decoration: const BoxDecoration(
          color: Color(0xff232935),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: Column(
        children: [
          Row(
            children: const [
              SizedBox(
                width: 15,
              ),
              CircleIcon(
                path: 'lib/assets/images/photo_2021-07-17_22-50-01.jpg',
                padding: 10,
                size: 30,
              ),
              Text(
                'would you like to post?',
                style: TextStyle(),
              ),
              Expanded(child: SizedBox()),
              SvgIcon(
                svgpath: 'lib/assets/svg/smile.svg',
                size: 20,
              ),
              SizedBox(
                width: 15,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                ButtonAndIcon(
                  path: 'lib/assets/svg/watch.svg',
                  dis: 'photo',
                ),
                ButtonAndIcon(
                  path: 'lib/assets/svg/stream.svg',
                  dis: 'Live',
                ),
                ButtonAndIcon(
                  path: 'lib/assets/svg/video.svg',
                  dis: 'Video',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
