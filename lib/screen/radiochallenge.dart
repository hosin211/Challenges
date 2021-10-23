import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:sizer/sizer.dart';
import 'package:ui_challenge_1/Widgets/approw.dart';
import 'package:ui_challenge_1/Widgets/customtext.dart';
import 'package:ui_challenge_1/Widgets/musicwidget.dart';
import 'package:ui_challenge_1/Widgets/svg_icon.dart';

import 'musiclist.dart';

class Radioscreen extends StatefulWidget {
  const Radioscreen({Key? key}) : super(key: key);

  @override
  State<Radioscreen> createState() => _RadioscreenState();
}

class _RadioscreenState extends State<Radioscreen> {
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (_, __, ___) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          home: SafeArea(
            child: Scaffold(
              body: Stack(
                children: [
                  Container(
                    height: 100.h,
                    width: 100.w,
                    color: Color(0xff01012A),
                  ),
                  Container(
                    height: 100.h,
                    width: 19.w,
                    color: Color(0xff080833),
                  ),
                  Positioned(
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
                  ),
                  const Approw(),
                  Positioned(
                    top: 11.h,
                    left: 26.w,
                    child: TextCustom(
                      size: 21.sp,
                      color: Colors.white,
                      text: 'Popular',
                      fontw: FontWeight.w300,
                    ),
                  ),
                  Positioned(
                    bottom: 24.h,
                    left: 6.w,
                    child: SvgIcon(
                      svgpath: 'lib/assets/svg/dot.svg',
                      size: 10.sp,
                    ),
                  ),
                  const MusicList(),
                  Positioned(
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
                      )),
                  Positioned(
                    child: Container(
                      width: 60.w,
                      height: 8.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SvgIcon(
                            svgpath: 'lib/assets/svg/valume.svg',
                            size: 15.sp,
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Colors.blue,
                              inactiveTrackColor: Colors.blue,
                              trackShape: const RectangularSliderTrackShape(),
                              trackHeight: 4.0,
                              thumbColor: Colors.blueAccent,
                              thumbShape: const RoundSliderThumbShape(
                                  enabledThumbRadius: 3.4),
                              overlayColor: Colors.red.withAlpha(32),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 10.0),
                            ),
                            child: Expanded(
                                child: Slider(
                                    value: _value.toDouble(),
                                    min: 0,
                                    max: 100,
                                    activeColor: Colors.blue,
                                    inactiveColor: Color(0xff262640),
                                    label: 'Set volume value',
                                    onChanged: (double newValue) {
                                      setState(() {
                                        _value = newValue.round();
                                      });
                                    },
                                    semanticFormatterCallback:
                                        (double newValue) {
                                      return '${newValue.round()} dollars';
                                    })),
                          ),
                          TextCustom(
                            size: 8.sp,
                            color: Colors.white,
                            text: '$_value%',
                            fontw: FontWeight.w300,
                          ),
                        ],
                      ),
                    ),
                    right: 10.w,
                    bottom: 0.5.h,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
    ;
  }
}