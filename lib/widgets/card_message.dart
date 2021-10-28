import 'package:flutter/material.dart';
import 'package:library_widgets/custom_painters/triangle_painter.dart';
import 'package:library_widgets/library_widgets.dart';

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
              Flexible(
                child: body ?? const SizedBox.shrink(),
              ),
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
