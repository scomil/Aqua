import 'package:aqua/common/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';

class PreloadBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    var rect = Offset.zero & size;

    paint.shader = const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        AquaColors.robinEggBlue,
        Color(0xFF004c66),
      ],
      stops: [0.0, 1.0],
    ).createShader(rect);

    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
