import 'package:assessment1/ui/common/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class MoonCakeCustomDraw extends CustomPainter {
  final pointMode = ui.PointMode.polygon;
  @override
  void paint(Canvas canvas, Size size) {
    var point = Offset(75, 75);
    var points = [
      Offset(5, 15),
      Offset(25, 15),
      Offset(75, 75),
      Offset(125, 15),
      Offset(145, 15),
    ];
    var paintPath = Paint()
      ..color = colorBackground
      ..strokeWidth = 3.0
      ..strokeCap = StrokeCap.round;
    var paintPoint = Paint()
      ..color = Colors.red
      ..strokeWidth = 3.0;
    double radius = 7.0;
    canvas.drawPoints(pointMode, points, paintPath);
    canvas.drawCircle(point, radius, paintPoint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class DrawCustomArc extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = Colors.red;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
