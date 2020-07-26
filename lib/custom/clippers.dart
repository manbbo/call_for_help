import 'package:flutter/material.dart';

class FirstPageCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 80;
    Path path = Path()
    ..moveTo(0, size.height)
      ..lineTo(0, radius)
      ..quadraticBezierTo(size.width/2, 0, size.width, radius)
      ..lineTo(size.width, size.height)
    ;

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}