import 'package:flutter/material.dart';

class CustomPanelClipper extends CustomClipper<Path> {
  const CustomPanelClipper();

  @override
  Path getClip(Size size) {
    final leftX = -(size.width * 0.0487);
    final leftY = size.height * 0.5377;

    final bezier1X1 = leftX + size.width * 0.2439;
    final bezier1Y1 = leftY - (size.height * 0.1006);
    final bezier1X2 = leftX + size.width * 0.6554;
    final bezier1Y2 = leftY - (size.height * 0.022);
    final bezier2X1 = bezier1X2 + (size.width * 0.3597);
    final bezier2Y1 = bezier1Y2 + (size.height * 0.0786);
    final bezier2X2 = bezier1X2 + (size.width * 0.5975);
    final bezier2Y2 = bezier1Y2 - (size.height * 0.0251);

    final path = Path();
    path.lineTo(leftX, 0);
    path.lineTo(0, leftY);
    path.quadraticBezierTo(bezier1X1, bezier1Y1, bezier1X2, bezier1Y2);
    path.quadraticBezierTo(bezier2X1, bezier2Y1, bezier2X2, bezier2Y2);
    path.lineTo(bezier2X2, 0);
    path.lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
