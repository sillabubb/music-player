import 'package:flutter/material.dart';
import 'package:minimalist_music_player/themes/dark_mode.dart';
import 'package:minimalist_music_player/themes/light_mode.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData getTheme() => _themeData;

  bool get isDarkMode => _themeData == darkMode;

  void setTheme(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    _themeData = isDarkMode ? lightMode : darkMode;
    notifyListeners();
  } 
}