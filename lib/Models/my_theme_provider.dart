import 'package:flutter/cupertino.dart';

class MyThemeModel extends ChangeNotifier {
  bool _islighttheme = true;

  void changetheme() {
    _islighttheme = !_islighttheme;
    notifyListeners();
  }

  bool get islighttheme => _islighttheme;
}
