import 'package:flutter/material.dart';

extension TechBorder2 on Widget {
  addTechBorder2({
    Color borderColor = Colors.grey,
    double borderWidth = 2,
  }) {
    return CustomPaint(
      painter: TechBorder2Painter(
        borderColor: borderColor,
        borderWidth: borderWidth,
      ),
      child: this,
    );
  }
}

class TechBorder2Painter extends CustomPainter {
  const TechBorder2Painter({
    @required this.borderColor,
    @required this.borderWidth,
  })  : assert(borderColor != null),
        assert(borderWidth != null);

  final Color borderColor;
  final double borderWidth;

  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;
    final double cornerWidth = width >= 8 ? 8 : 0;

    final paint = Paint()
      ..color = borderColor
      ..strokeWidth = borderWidth
      ..strokeCap = StrokeCap.square;

    /// paint left border
    var p1 = Offset(0, cornerWidth);
    var p2 = Offset(0, height - cornerWidth);
    canvas.drawLine(p1, p2, paint);

    /// paint top border
    p1 = Offset(cornerWidth, 0);
    p2 = Offset(width - cornerWidth, 0);
    canvas.drawLine(p1, p2, paint);

    /// paint right border
    p1 = Offset(width, cornerWidth);
    p2 = Offset(width, height - cornerWidth);
    canvas.drawLine(p1, p2, paint);

    /// paint bottom border
    p1 = Offset(cornerWidth, height);
    p2 = Offset(width - cornerWidth, height);
    canvas.drawLine(p1, p2, paint);

    /// paint top left border
    p1 = Offset(0, cornerWidth);
    p2 = Offset(cornerWidth, 0);
    canvas.drawLine(p1, p2, paint);

    /// paint top right border
    p1 = Offset(width - cornerWidth, 0);
    p2 = Offset(width, cornerWidth);
    canvas.drawLine(p1, p2, paint);

    /// paint bottom left border
    p1 = Offset(0, height - cornerWidth);
    p2 = Offset(cornerWidth, height);
    canvas.drawLine(p1, p2, paint);

    /// paint bottom right border
    p1 = Offset(width - cornerWidth, height);
    p2 = Offset(width, height - cornerWidth);
    canvas.drawLine(p1, p2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
