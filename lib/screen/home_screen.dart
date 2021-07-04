import 'package:appzaman/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:appzaman/constans.dart';
import 'package:appzaman/screen/Componnet/body.dart';

class Home_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    SizeConfig().init(context);
    return new Scaffold(
      appBar: new AppBar(
        leading: IconButton(
            icon: SvgPicture.asset(
              "assets/Settings.svg",
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () {}),
        actions: [
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: InkWell(
                  onTap: () {},
                  child: new Container(
                    width: getProportionateScreenWidth(32),
                    decoration: new BoxDecoration(
                        color: Color(0xFFFF97B3), shape: BoxShape.circle),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
      body: Body(),
    );
  }
}
