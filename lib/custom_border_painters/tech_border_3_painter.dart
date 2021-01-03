import 'package:flutter/material.dart';

extension TechBorder3 on Widget {
  addTechBorder3({
    Color borderColor = Colors.grey,
    double borderWidth = 2,
  }) {
    return CustomPaint(
      painter: TechBorder3Painter(
        borderColor: borderColor,
        borderWidth: borderWidth,
      ),
      child: this,
    );
  }
}

class TechBorder3Painter extends CustomPainter {
  const TechBorder3Painter({
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
    final double padding = 6;
    final double cornerWidth = padding * 2;
    final double coverBorderPadding = cornerWidth * 2;
    final double corverBorderWidth = width - coverBorderPadding;
    final double corverBorderHeight = height - coverBorderPadding;

    var paint = Paint()
      ..color = borderColor
      ..strokeWidth = borderWidth
      ..strokeCap = StrokeCap.square;

    /// paint left border
    var leftTopBorder = Offset(padding, cornerWidth);
    var leftBottomBorder = Offset(padding, height - cornerWidth);
    canvas.drawLine(leftTopBorder, leftBottomBorder, paint);

    /// paint top border
    var topLeftBorder = Offset(cornerWidth, padding);
    var topRightBorder = Offset(width - cornerWidth, padding);
    canvas.drawLine(topLeftBorder, topRightBorder, paint);

    /// paint right border
    var rightTopBorder = Offset(width - padding, cornerWidth);
    var rightBottomBorder = Offset(width - padding, height - cornerWidth);
    canvas.drawLine(rightTopBorder, rightBottomBorder, paint);

    /// paint bottom border
    var bottomLeftBorder = Offset(cornerWidth, height - padding);
    var bottomRightBorder = Offset(width - cornerWidth, height - padding);
    canvas.drawLine(bottomLeftBorder, bottomRightBorder, paint);

    /// paint top left border
    canvas.drawLine(leftTopBorder, topLeftBorder, paint);

    /// paint top right border
    canvas.drawLine(topRightBorder, rightTopBorder, paint);

    /// paint bottom left border
    canvas.drawLine(leftBottomBorder, bottomLeftBorder, paint);

    /// paint bottom right border
    canvas.drawLine(bottomRightBorder, rightBottomBorder, paint);

    paint = Paint()
      ..color = borderColor
      ..strokeWidth = borderWidth / 4
      ..strokeCap = StrokeCap.square;

    /// paint top left corver border
    var topLeftBottom = Offset(0, cornerWidth);
    var topLeftTop = Offset(cornerWidth, 0);
    canvas.drawLine(topLeftBottom, topLeftTop, paint);

    /// paint top right corver border
    var topRightTop = Offset(width - cornerWidth, 0);
    var topRightBottom = Offset(width, cornerWidth);
    canvas.drawLine(topRightTop, topRightBottom, paint);

    /// paint bottom left corver border
    var bottomLeftTop = Offset(0, height - cornerWidth);
    var bottomLeftBottom = Offset(cornerWidth, height);
    canvas.drawLine(bottomLeftTop, bottomLeftBottom, paint);

    /// paint bottom right corver border
    var bottomRightBottom = Offset(width - cornerWidth, height);
    var bottomRightTop = Offset(width, height - cornerWidth);
    canvas.drawLine(bottomRightBottom, bottomRightTop, paint);

    /// paint left cover border
    canvas.drawLine(topLeftBottom, Offset(0, coverBorderPadding), paint);
    canvas.drawLine(bottomLeftTop, Offset(0, corverBorderHeight), paint);

    /// paint top cover border
    canvas.drawLine(topLeftTop, Offset(coverBorderPadding, 0), paint);
    canvas.drawLine(topRightTop, Offset(corverBorderWidth, 0), paint);

    /// paint right cover border
    canvas.drawLine(topRightBottom, Offset(width, coverBorderPadding), paint);
    canvas.drawLine(bottomRightTop, Offset(width, corverBorderHeight), paint);

    /// paint bottom cover border
    canvas.drawLine(
      bottomLeftBottom,
      Offset(coverBorderPadding, height),
      paint,
    );
    canvas.drawLine(
      bottomRightBottom,
      Offset(corverBorderWidth, height),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
