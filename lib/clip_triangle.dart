import 'package:flutter/cupertino.dart';

class ClipTriangle extends CustomClipper<Path> {
  ClipTriangle();

  @override
  Path getClip(Size size) {
    final path = Path();
    // move to left top corner of a screen
    path.moveTo(0, 0);

    path.lineTo(size.width, 0);
    path.lineTo(size.width / 2, size.height);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
