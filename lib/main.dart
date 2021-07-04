import 'package:appzaman/Models/my_theme_provider.dart';
import 'package:appzaman/theme.dart';
import 'package:flutter/material.dart';

import 'package:appzaman/screen/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ChangeNotifierProvider(
        create: (context) => MyThemeModel(),
        child: Consumer<MyThemeModel>(
            builder: (context, theme, child) => MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: "Analog Clock",
                  theme: ThemeData(
                    primaryColor: Colors.redAccent,
                    backgroundColor: Colors.white,
                  ),
                  darkTheme: darkThemeData(context),
                  themeMode:
                      theme.islighttheme ? ThemeMode.light : ThemeMode.dark,
                  home: Home_screen(),
                )));
  }
}
