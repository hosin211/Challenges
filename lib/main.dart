import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_challenge_1/screen/firsthalf.dart';
import 'package:ui_challenge_1/screen/secondhalf.dart';

import 'Widgets/circle_icon.dart';
import 'Widgets/svg_icon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: DefaultTabController(
          length: 5,
          child: Scaffold(
              appBar: AppBar(
                title: const SvgIcon(
                  svgpath: 'lib/assets/svg/facebook.svg',
                  size: 40,
                ),
                actions: const [
                  SvgIcon(
                    svgpath: 'lib/assets/svg/search_icon.svg',
                    size: 40,
                  ),
                  SvgIcon(
                    svgpath: 'lib/assets/svg/notify.svg',
                    size: 40,
                  ),
                  SvgIcon(
                    svgpath: 'lib/assets/svg/messenger.svg',
                    size: 40,
                  ),
                  CircleIcon(
                    path: 'lib/assets/images/photo_2021-07-17_22-50-01.jpg',
                    padding: 10,
                    size: 40,
                  ),
                ],
                elevation: 0,
                backgroundColor: const Color(0xff232935),
              ),
              backgroundColor: const Color(0xff0F1626),
              body: SingleChildScrollView(
                child: Column(
                  children: const [
                    FirstHalf(),
                    SizedBox(
                      height: 20,
                    ),
                    SecondHalf(),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
