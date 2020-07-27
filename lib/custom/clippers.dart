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

class SOSPageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 80;
    Path path = Path()
      ..lineTo(0, size.height-radius)
      ..quadraticBezierTo(size.width/2, size.height, size.width, size.height-radius)
      ..lineTo(size.width, 0)
    ;
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class ChoicesClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 2;
    Path path = Path()
      ..lineTo(0, size.height)
      ..quadraticBezierTo((size.width/1.2), size.height-radius, size.width, 0)
      ..lineTo(size.width, 0)
    ;
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}