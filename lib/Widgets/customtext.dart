import 'package:flutter/cupertino.dart';

class TextCustom extends StatelessWidget {
  const TextCustom({
    Key? key,
    required this.color,
    required this.text,
    required this.size,
    required this.fontw,
  }) : super(key: key);
  final String text;
  final double size;
  final Color color;
  final FontWeight fontw;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontWeight: fontw, fontSize: size),
    );
  }
}
