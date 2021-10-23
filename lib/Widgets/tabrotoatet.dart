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
      top: 11.h,
      left: 26.w,
      child: TextCustom(
        size: 21.sp,
        color: Colors.white,
        text: 'Popular',
        fontw: FontWeight.w300,
      ),
    );
  }
}
