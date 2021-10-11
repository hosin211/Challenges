import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  const CircleIcon({
    Key? key,
    required this.path,
    required this.padding,
    required this.size,
  }) : super(key: key);
  final String path;
  final double padding;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding == 0
          ? const EdgeInsets.all(0)
          : EdgeInsets.symmetric(horizontal: padding),
      child: Container(
        width: size,
        height: 76,
        child: CircleAvatar(
          radius: 50,
          child: ClipOval(
            child: Image.asset(path),
          ),
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white,
            width: 2.0,
          ),
        ),
      ),
    );
  }
}
