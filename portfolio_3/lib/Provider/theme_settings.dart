
import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:portfolio_3/Theme/theme.dart';


class ThemeSetting extends ChangeNotifier {
  ThemeData _currentTheme = lightTheme();
  ThemeData get currentTheme => _currentTheme;


Icon iconChange(){
    if(_currentTheme == lightTheme()){
      return  const Icon(FlutterRemix.moon_line);
    }else{
      return  const Icon(FlutterRemix.sun_line);
    }
  }

  void toggleTheme() async {

    if (_currentTheme == lightTheme()) {
      _currentTheme = darkTheme();
    } else {
      _currentTheme = lightTheme();

    }

    notifyListeners();
  }
}
