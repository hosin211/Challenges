import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';
import 'package:ui_challenge_1/Widgets/svg_icon.dart';

import 'customtext.dart';

class Music extends StatelessWidget {
  const Music({
    Key? key,
    required this.number,
    required this.path,
  }) : super(key: key);
  final String number, path;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xff01012A),
          border: Border.all(
            color: Color(0xff343455),
          ),
          borderRadius: BorderRadius.all(Radius.circular(7))),
      height: 25.h,
      child: Stack(
        children: [
          Positioned(
            top: 0.8.h,
            right: 1.w,
            child: const SvgIcon(
              svgpath: 'lib/assets/svg/notlive.svg',
              size: 10,
            ),
          ),
          Positioned(
            top: 18,
            left: 25,
            child: TextCustom(
              size: 24.sp,
              color: Color(0xff343455),
              text: number,
              fontw: FontWeight.w600,
            ),
          ),
          Positioned(
            top: 43,
            left: 22,
            child: TextCustom(
              size: 11.sp,
              color: Color(0xff343455),
              text: 'Divelement',
              fontw: FontWeight.w300,
            ),
          ),
          Positioned(
            top: 60,
            left: 10,
            child: SvgIcon(
              svgpath: path,
              size: 70.sp,
            ),
          ),
        ],
      ),
    );
  }
}
