import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_challenge_1/Widgets/buttonandicon.dart';
import 'package:ui_challenge_1/Widgets/buttonwithbig.dart';
import 'package:ui_challenge_1/Widgets/circle_icon.dart';
import 'package:ui_challenge_1/Widgets/liticon.dart';
import 'package:ui_challenge_1/Widgets/svg_icon.dart';
import 'package:ui_challenge_1/Widgets/tabs.dart';
import 'package:ui_challenge_1/Widgets/tilesettings.dart';

class SecondHalf extends StatefulWidget {
  const SecondHalf({
    Key? key,
  }) : super(key: key);

  @override
  State<SecondHalf> createState() => _SecondHalfState();
}

bool _switchValue = true;

class _SecondHalfState extends State<SecondHalf> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      decoration: const BoxDecoration(
        color: Color(0xff232935),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 30,
                height: 50,
              ),
              const Text(
                'Menu',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                  color: Color(0xff2D3F7B),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(3.0),
                  child: SvgIcon(
                    svgpath: 'lib/assets/svg/darkmode.svg',
                    size: 8,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Dark Mode',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 30, //set desired REAL HEIGHT
                width: 35, //set desired REAL WIDTH
                child: Transform.scale(
                  transformHitTests: false,
                  scale: .5,
                  child: CupertinoSwitch(
                    value: _switchValue,
                    onChanged: (value) {
                      setState(() {
                        _switchValue = value;
                      });
                    },
                    thumbColor: Colors.white,
                    activeColor: Colors.blue,
                    trackColor: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 0),
                child: ButtonAndIcon(
                  path: 'lib/assets/svg/support.svg',
                  dis: 'Support',
                ),
              ),
              ButtonAndIcon(
                path: 'lib/assets/svg/settings.svg',
                dis: 'Configuración y privacid',
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 120,
                      width: 210,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('lib/assets/images/Kayle_3.jpg'),
                        ),
                      ),
                      child: Stack(
                        children: [
                          const Positioned(
                            top: 7,
                            left: 7,
                            child: SvgIcon(
                              svgpath: 'lib/assets/svg/recl.svg',
                              size: 30,
                            ),
                          ),
                          Positioned(
                            right: 10,
                            bottom: 10,
                            child: Container(
                              child: const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Text(
                                  ' Hace 3 años ',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black),
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(9),
                                ),
                                color: Color(0xffEFF6FD).withOpacity(0.8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 120,
                      width: 210,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                        color: Color(0xff1977F3),
                      ),
                      child: Stack(
                        children: const [
                          Positioned(
                            top: 15,
                            left: 15,
                            child: Text('COVID-19 Information '),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: SvgIcon(
                              svgpath: 'lib/assets/svg/corno.svg',
                              size: 180,
                            ),
                          ),
                          Positioned(
                            top: 35,
                            left: 15,
                            child: Text('Center'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          const TileSettings(),
          const Tabs(),
        ],
      ),
    );
  }
}
