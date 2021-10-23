import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:ui_challenge_1/Widgets/svg_icon.dart';

import 'customtext.dart';

class Approw extends StatelessWidget {
  const Approw({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 2.h,
      left: 3.w,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 3),
            child: SvgIcon(
              svgpath: 'lib/assets/svg/playbutton.svg',
              size: 24.sp,
            ),
          ),
          SizedBox(
            width: 12.w,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 1),
            child: TextCustom(
              size: 17.sp,
              color: Colors.white,
              text: 'Hello',
              fontw: FontWeight.w500,
            ),
          ),
          const SizedBox(
            width: 2,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 3),
            child: TextCustom(
              size: 20.sp,
              color: Color(0xffDF2464),
              text: 'Miau',
              fontw: FontWeight.w600,
            ),
          ),
          SizedBox(
            width: 28.w,
          ),
          Image.asset(
            'lib/assets/images/profile-removebg-preview.png',
            width: 15.w,
          ),
        ],
      ),
    );
  }
}
