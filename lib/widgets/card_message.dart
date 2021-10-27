import 'package:flutter/material.dart';
import 'package:library_widgets/enums/enums.dart';

class CardMessage extends StatelessWidget {
  const CardMessage({
    Key? key,
    this.circleAvatar,
    this.leading,
    this.body,
    this.action,
    this.border,
    this.borderRadius,
    this.backgroundColor,
    this.positionHorizontalTriangle,
    this.positionVerticalTriangle,
    required this.maxHeight,
    required this.maxWidth,
  }) : super(key: key);

  final CircleAvatar? circleAvatar;
  final PositionVerticalTriangle? positionVerticalTriangle;
  final PositionHorizontalTriangle? positionHorizontalTriangle;
  final Widget? leading;
  final Widget? body;
  final Widget? action;
  final BoxBorder? border;
  final BorderRadiusGeometry? borderRadius;
  final Color? backgroundColor;
  final double maxWidth;
  final double maxHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: positionHorizontalTriangle != null &&
              positionHorizontalTriangle == PositionHorizontalTriangle.right
          ? CrossAxisAlignment.end
          : CrossAxisAlignment.start,
      children: [
        positionVerticalTriangle != null &&
                positionVerticalTriangle == PositionVerticalTriangle.top
            ? _avatar()
            : const SizedBox.shrink(),
        positionVerticalTriangle != null &&
                positionVerticalTriangle == PositionVerticalTriangle.top
            ? _triangle()
            : const SizedBox.shrink(),
        Container(
          constraints: BoxConstraints(
            maxWidth: maxWidth,
            maxHeight: maxHeight,
          ),
          decoration: BoxDecoration(
            border: border,
            borderRadius: borderRadius,
            color: backgroundColor ?? Colors.white,
          ),
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              leading ?? const SizedBox.shrink(),
              const SizedBox(
                width: 16,
              ),
              body ?? const SizedBox.shrink(),
              const Spacer(),
              action ?? const SizedBox.shrink(),
            ],
          ),
        ),
        positionVerticalTriangle == null ||
                PositionVerticalTriangle.bottom == positionVerticalTriangle
            ? _triangle()
            : const SizedBox.shrink(),
        positionVerticalTriangle == null ||
                PositionVerticalTriangle.bottom == positionVerticalTriangle
            ? _avatar()
            : const SizedBox.shrink(),
      ],
    );
  }

  Widget _triangle() {
    return Padding(
      padding: EdgeInsets.only(
        right: (positionHorizontalTriangle != null &&
                positionHorizontalTriangle == PositionHorizontalTriangle.right)
            ? 16
            : 0,
        left: (positionHorizontalTriangle != null &&
                positionHorizontalTriangle == PositionHorizontalTriangle.left)
            ? 16
            : 0,
      ),
      child: CustomPaint(
        size: const Size(16.0, 10),
        painter: TrianglePainter(
          positionVerticalTriangle:
              positionVerticalTriangle ?? PositionVerticalTriangle.bottom,
          color: backgroundColor ?? Colors.white,
        ),
      ),
    );
  }

  Widget _avatar() {
    return Padding(
      padding: EdgeInsets.only(
        right: (positionHorizontalTriangle != null &&
                positionHorizontalTriangle == PositionHorizontalTriangle.right)
            ? ((circleAvatar?.maxRadius ?? 16) / 2)
            : 0,
        left: (positionHorizontalTriangle != null &&
                positionHorizontalTriangle == PositionHorizontalTriangle.left)
            ? ((circleAvatar?.maxRadius ?? 16) / 2)
            : 0,
      ),
      child: circleAvatar ?? const SizedBox.shrink(),
    );
  }
}

/// [TrianglePainter] is custom painter for drawing a triangle for popup
/// to point specific widget
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
