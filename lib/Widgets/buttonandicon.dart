import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_challenge_1/Widgets/svg_icon.dart';

class ButtonAndIcon extends StatelessWidget {
  const ButtonAndIcon({
    Key? key,
    required this.path,
    required this.dis,
  }) : super(key: key);
  final String path, dis;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(7))),
          elevation: 0,
          primary: const Color(0xff292F3B),
        ),
        onPressed: () {},
        icon: SvgIcon(
          svgpath: path,
          size: 15,
        ),
        label: Text(
          dis,
          style: TextStyle(fontSize: 14),
        ));
  }
}
