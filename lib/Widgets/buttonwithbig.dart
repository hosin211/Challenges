import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    Key? key,
    required this.text,
    required this.path,
  }) : super(key: key);
  final String text, path;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: const BoxDecoration(
        color: Color(0xff292F3B),
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            width: 25,
          ),
          SvgPicture.asset(
            path,
            height: 20,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
