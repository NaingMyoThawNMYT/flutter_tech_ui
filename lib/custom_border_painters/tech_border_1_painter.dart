import 'package:flutter/material.dart';

extension TechBorder1 on Widget {
  addTechBorder1({
    Color borderColor = Colors.grey,
    double borderWidth = 2,
  }) {
    return CustomPaint(
      painter: TechBorder1Painter(
        borderColor: borderColor,
        borderWidth: borderWidth,
      ),
      child: this,
    );
  }
}

class TechBorder1Painter extends CustomPainter {
  const TechBorder1Painter({
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
    final double cornerWidth = 8;

    final paint = Paint()
      ..color = borderColor
      ..strokeWidth = borderWidth
      ..strokeCap = StrokeCap.square;

    /// paint left border start
    var p1 = Offset(0, 0);
    var p2 = Offset(0, height);
    canvas.drawLine(p1, p2, paint);

    /// paint left border top corner
    p1 = Offset(0, 0);
    p2 = Offset(cornerWidth, 0);
    canvas.drawLine(p1, p2, paint);

    /// paint left border bottom corner
    p1 = Offset(0, height);
    p2 = Offset(cornerWidth, height);
    canvas.drawLine(p1, p2, paint);

    /// paint left border end

    /// paint right border start
    p1 = Offset(width, 0);
    p2 = Offset(width, height);
    canvas.drawLine(p1, p2, paint);

    /// paint right border top corner
    p1 = Offset(width - cornerWidth, 0);
    p2 = Offset(width, 0);
    canvas.drawLine(p1, p2, paint);

    /// paint right border bottom corner
    p1 = Offset(width - cornerWidth, height);
    p2 = Offset(width, height);
    canvas.drawLine(p1, p2, paint);

    /// paint right border end
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
