import 'package:flutter/cupertino.dart';

class ClipHalfCircle extends CustomClipper<Path> {
  ClipHalfCircle();

  @override
  Path getClip(Size size) {
    final path = Path();
    // move to left bottom corner of a screen
    path.moveTo(0, size.height);

    path.arcToPoint(
      Offset(size.width, size.height),
      radius: Radius.circular(size.height / 2),
    );

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
