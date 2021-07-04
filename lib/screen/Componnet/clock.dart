import 'dart:async';
import 'dart:math';

import 'package:appzaman/Models/my_theme_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../constans.dart';
import 'clock_painter.dart';

class Clock extends StatefulWidget {
  const Clock({Key key}) : super(key: key);

  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  DateTime _dateTime = DateTime.now();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _dateTime = DateTime.now();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: AspectRatio(
            aspectRatio: 1,
            child: new Container(
              decoration: new BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 0),
                        color: kShadowColor.withOpacity(0.14),
                        blurRadius: 64)
                  ]),
              child: Transform.rotate(
                angle: -pi / 2,
                child: CustomPaint(
                  painter: Clockpainter(context, _dateTime),
                ),
              ),
            ),
          ),
        ),
        Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Consumer<MyThemeModel>(
              builder: (context, theme, child) => InkWell(
                onTap: () => theme.changetheme(),
                child: SvgPicture.asset(
                  theme.islighttheme ? "assets/Sun.svg" : "assets/Moon.svg",
                  height: 24,
                  width: 24,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ))
      ],
    );
  }
}
