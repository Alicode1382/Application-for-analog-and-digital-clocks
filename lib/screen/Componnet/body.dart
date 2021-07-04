import 'dart:async';
import 'dart:math';

import 'package:appzaman/constans.dart';
import 'package:appzaman/screen/Componnet/time_in_hour_and_minute.dart';
import 'package:appzaman/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'clock.dart';
import 'clock_painter.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: new Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: new Text(
                "Meshgin City",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Timeinhourandminutes(),
            Spacer(),
            Clock(),
            Spacer(),
            new SizedBox(
              width: getProportionateScreenWidth(233),
              child: new AspectRatio(
                aspectRatio: 1.32,
                child: new Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(10),
                      border: Border.all(
                          color: Theme.of(context).primaryIconTheme.color)),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      new Text(
                        "meshgin shahr ghsabe",
                        style: Theme.of(context).textTheme.headline4.copyWith(
                            fontSize: getProportionateScreenWidth(16)),
                      ),
                      new SizedBox(
                        height: 5,
                      ),
                      new Text("+3 hrs"),
                      new Row(
                        children: [
                          new Text(
                            "9:20",
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          new RotatedBox(
                            quarterTurns: 3,
                            child: new Text("Am"),
                          ),
                          Spacer(),
                          new Row(
                            children: [
                              Padding(padding: EdgeInsets.only(right: 20.0)),
                              SvgPicture.asset("assets/Liberty.svg")
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
