import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:ui_challenge_1/Widgets/customtext.dart';
import 'package:ui_challenge_1/Widgets/musicwidget.dart';
import 'package:ui_challenge_1/Widgets/svg_icon.dart';

class MusicList extends StatelessWidget {
  const MusicList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: 4.w,
        top: 20.h,
        child: Container(
          width: 70.w,
          height: 54.h,
          //  color: Colors.white,
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1,
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Color(0xffFF296D),
                    borderRadius: BorderRadius.all(Radius.circular(7))),
                height: 20.h,
                child: Stack(
                  children: [
                    Positioned(
                      left: 3.2.w,
                      top: 1.1.h,
                      child: TextCustom(
                        size: 3.w.toDouble(),
                        color: Color(0xffAA1E4A),
                        text: 'Playing',
                        fontw: FontWeight.w600,
                      ),
                    ),
                    Positioned(
                      top: 1.h,
                      right: 1.w,
                      child: const SvgIcon(
                        svgpath: 'lib/assets/svg/love.svg',
                        size: 10,
                      ),
                    ),
                    Positioned(
                      top: 18,
                      left: 25,
                      child: TextCustom(
                        size: 24.sp,
                        color: Colors.white,
                        text: '90.5',
                        fontw: FontWeight.w600,
                      ),
                    ),
                    Positioned(
                      top: 43,
                      left: 22,
                      child: TextCustom(
                        size: 11.sp,
                        color: Colors.white,
                        text: 'Divelement',
                        fontw: FontWeight.w300,
                      ),
                    ),
                    Positioned(
                      top: 60,
                      left: 10,
                      child: SvgIcon(
                        svgpath: 'lib/assets/svg/line.svg',
                        size: 70.sp,
                      ),
                    ),
                  ],
                ),
              ),
              const Music(
                path: 'lib/assets/svg/notline.svg',
                number: '94.3',
              ),
              const Music(
                path: 'lib/assets/svg/notline2.svg',
                number: '98.5',
              ),
              const Music(
                path: 'lib/assets/svg/notline3.svg',
                number: '91.0',
              ),
              const Music(
                path: 'lib/assets/svg/notline4.svg',
                number: '104.2',
              ),
              const Music(
                path: 'lib/assets/svg/notline5.svg',
                number: '92.7',
              ),
            ],
          ),
        ));
  }
}
