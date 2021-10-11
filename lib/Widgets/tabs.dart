import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Tabs extends StatelessWidget {
  const Tabs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(indicatorColor: Color(0xff222833), tabs: [
      SvgPicture.asset(
        'lib/assets/svg/home.svg',
        height: 25,
      ),
      SvgPicture.asset(
        'lib/assets/svg/ytwatch.svg',
        height: 25,
      ),
      SvgPicture.asset(
        'lib/assets/svg/shop.svg',
        height: 25,
      ),
      SvgPicture.asset(
        'lib/assets/svg/people.svg',
        color: const Color(0xff464D5A),
        height: 25,
      ),
      SvgPicture.asset(
        'lib/assets/svg/windows.svg',
        height: 25,
      ),
    ]);
  }
}
