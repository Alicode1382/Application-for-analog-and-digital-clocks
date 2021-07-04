import 'dart:math';

import 'package:flutter/material.dart';

class Clockpainter extends CustomPainter {
  final BuildContext context;

  final DateTime datetime;

  Clockpainter(this.context, this.datetime);

  @override
  void paint(Canvas canvas, Size size) {
    double centerx = size.width / 2;
    double centery = size.height / 2;
    Offset center = Offset(centerx, centery);

    double minx =
        centerx + size.width * 0.35 * cos((datetime.minute * 6) * pi / 180);

    double miny =
        centery + size.width * 0.35 * sin((datetime.minute * 6) * pi / 180);
    //عقربه دقیقه
    canvas.drawLine(
        center,
        Offset(minx, miny),
        Paint()
          ..color = Theme.of(context).accentColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = 10);

    double hourx = centerx +
        size.width *
            0.3 *
            cos((datetime.hour * 30 + datetime.minute * 0.5) * pi / 180);
    double houry = centery +
        size.width *
            0.3 *
            sin((datetime.hour * 30 + datetime.minute * 0.5) * pi / 180);

    //عقربه ساعت
    canvas.drawLine(
        center,
        Offset(hourx, houry),
        Paint()
          ..color = Theme.of(context).colorScheme.secondary
          ..style = PaintingStyle.stroke
          ..strokeWidth = 10);

    double secondx =
        centerx + size.width * 0.4 * cos((datetime.second * 6) * pi / 180);
    double secondy =
        centery + size.width * 0.4 * sin((datetime.second * 6) * pi / 180);

    //عقربه ثانیه
    canvas.drawLine(center, Offset(secondx, secondy),
        Paint()..color = Theme.of(context).primaryColor);

    Paint dotPainter = Paint()
      ..color = Theme.of(context).primaryIconTheme.color;
    canvas.drawCircle(center, 24, dotPainter);
    canvas.drawCircle(
        center, 23, Paint()..color = Theme.of(context).backgroundColor);
    canvas.drawCircle(center, 10, dotPainter);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
