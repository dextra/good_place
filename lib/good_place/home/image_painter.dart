import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:good_place/theme.dart';

class ImagePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final minScreenSize = min(size.height, size.width);

    final rect = Rect.fromCenter(
      center: Offset(minScreenSize * 0.9, 0),
      width: size.width * 1.8,
      height: size.height * 1.8,
    );

    final path = Path()..addOval(rect);

    canvas.clipRect(Offset.zero & size);

    canvas.drawPath(
      path,
      Paint()..color = CustomColors.crazy_green,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
