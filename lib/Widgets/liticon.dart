import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LitIcon extends StatelessWidget {
  const LitIcon({
    Key? key,
    required this.path,
  }) : super(key: key);
  final String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 30,
      child: CircleAvatar(
        radius: 70,
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
    );
  }
}
