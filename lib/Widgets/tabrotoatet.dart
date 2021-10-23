import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'customtext.dart';

class TabRotatet extends StatelessWidget {
  const TabRotatet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 19.h,
      child: RotatedBox(
        quarterTurns: 3,
        child: Container(
          width: 60.h,
          height: 20.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextCustom(
                size: 15.sp,
                color: Colors.white,
                text: 'Popular',
                fontw: FontWeight.w500,
              ),
              TextCustom(
                size: 15.sp,
                color: Color(0xff525270),
                text: 'Favorites',
                fontw: FontWeight.w500,
              ),
              TextCustom(
                size: 15.sp,
                color: Color(0xff525270),
                text: 'All Stations',
                fontw: FontWeight.w500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
