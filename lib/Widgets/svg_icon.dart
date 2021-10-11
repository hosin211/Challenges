import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class SvgIcon extends StatelessWidget {
  const SvgIcon({
    Key? key,
    required this.svgpath,
    required this.size,
  }) : super(key: key);

  final String svgpath;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SvgPicture.asset(
        svgpath,
        width: size,
      ),
    );
  }
}
