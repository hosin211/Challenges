import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:ui_challenge_1/Widgets/svg_icon.dart';

import 'customtext.dart';

class Player extends StatelessWidget {
  const Player({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: 5.w,
        bottom: 10.h,
        child: Container(
          width: 68.w,
          height: 15.h,
          //color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgIcon(
                svgpath: 'lib/assets/svg/back.svg',
                size: 30.sp,
              ),
              SvgIcon(
                svgpath: 'lib/assets/svg/play.svg',
                size: 80.sp,
              ),
              SvgIcon(
                svgpath: 'lib/assets/svg/forword.svg',
                size: 30.sp,
              ),
            ],
          ),
        ));
  }
}
