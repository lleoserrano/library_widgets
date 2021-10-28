import 'package:flutter/material.dart';
import 'package:library_widgets/library_widgets.dart';

class TrianglePainter extends CustomPainter {
  PositionVerticalTriangle positionVerticalTriangle;
  Color color;

  TrianglePainter({
    required this.positionVerticalTriangle,
    required this.color,
  });

  /// Draws the triangle of specific [size] on [canvas]
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();
    paint.strokeWidth = 2.0;
    paint.color = color;
    paint.style = PaintingStyle.fill;

    if (positionVerticalTriangle == PositionVerticalTriangle.bottom) {
      path.moveTo(0.0, -1.0);
      path.lineTo(size.width, -1.0);
      path.lineTo(size.width / 2.0, size.height);
    } else {
      path.moveTo(size.width / 2.0, 0.0);
      path.lineTo(0.0, size.height + 1);
      path.lineTo(size.width, size.height + 1);
    }

    canvas.drawPath(path, paint);
  }

  /// Specifies to redraw for [customPainter]
  @override
  bool shouldRepaint(CustomPainter customPainter) {
    return true;
  }
}