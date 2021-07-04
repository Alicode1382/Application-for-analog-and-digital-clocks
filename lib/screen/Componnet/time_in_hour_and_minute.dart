import 'dart:async';

import 'package:flutter/material.dart';

import '../../size_config.dart';

class Timeinhourandminutes extends StatefulWidget {
  const Timeinhourandminutes({Key key}) : super(key: key);

  @override
  _TimeinhourandminutesState createState() => _TimeinhourandminutesState();
}

class _TimeinhourandminutesState extends State<Timeinhourandminutes> {
  TimeOfDay _Timeofday = TimeOfDay.now();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (_Timeofday.minute != TimeOfDay.now().minute) {
        _Timeofday = TimeOfDay.now();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String _period = _Timeofday.period == DayPeriod.am ? "AM" : "PM";
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        new Text(
          "${_Timeofday.hourOfPeriod}:${_Timeofday.minute}",
          style: Theme.of(context).textTheme.headline1,
        ),
        SizedBox(
          width: 5.0,
        ),
        RotatedBox(
          quarterTurns: 3,
          child: new Text(
            _period,
            style: new TextStyle(fontSize: getProportionateScreenWidth(18)),
          ),
        )
      ],
    );
  }
}
