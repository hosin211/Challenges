import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_challenge_1/Widgets/svg_icon.dart';

import 'buttonwithbig.dart';
import 'liticon.dart';

class TileSettings extends StatelessWidget {
  const TileSettings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 2.1,
        children: [
          Stack(
            children: const [
              ButtonWithText(
                path: 'lib/assets/svg/youtube.svg',
                text: 'Videos en Watch',
              ),
              Positioned(
                top: 5,
                right: 12,
                child: SvgIcon(
                  svgpath: 'lib/assets/svg/dot.svg',
                  size: 10,
                ),
              ),
            ],
          ),
          Stack(
            children: const [
              ButtonWithText(
                path: 'lib/assets/svg/market.svg',
                text: 'Marketplace',
              ),
              Positioned(
                top: 5,
                right: 12,
                child: SvgIcon(
                  svgpath: 'lib/assets/svg/dot.svg',
                  size: 10,
                ),
              ),
            ],
          ),
          Stack(
            children: const [
              ButtonWithText(
                path: 'lib/assets/svg/market.svg',
                text: 'Parejas',
              ),
              Positioned(
                top: 5,
                right: 15,
                child: LitIcon(
                  path: 'lib/assets/images/photo_2021-07-17_22-50-01.jpg',
                ),
              ),
              Positioned(
                top: 5,
                right: 30,
                child: LitIcon(
                  path: 'lib/assets/images/photo_2021-07-17_22-50-01.jpg',
                ),
              ),
              Positioned(
                top: 5,
                right: 45,
                child: LitIcon(
                  path: 'lib/assets/images/photo_2021-07-17_22-50-01.jpg',
                ),
              ),
            ],
          ),
          Stack(
            children: const [
              ButtonWithText(
                path: 'lib/assets/svg/play.svg',
                text: 'Videojuegos',
              ),
              Positioned(
                top: 5,
                right: 15,
                child: LitIcon(
                  path: 'lib/assets/images/photo_2021-07-17_22-50-01.jpg',
                ),
              ),
              Positioned(
                top: 5,
                right: 30,
                child: LitIcon(
                  path: 'lib/assets/images/photo_2021-07-17_22-50-01.jpg',
                ),
              ),
            ],
          ),
          const ButtonWithText(
            path: 'lib/assets/svg/emaly.svg',
            text: 'Empleos',
          ),
          const ButtonWithText(
            path: 'lib/assets/svg/saved.svg',
            text: 'Guardados',
          ),
        ],
      ),
    );
  }
}
