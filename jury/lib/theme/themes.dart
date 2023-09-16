import 'package:flutter/material.dart';

class ThemeManager {
  static ThemeData lightTheme = ThemeData(
    focusColor: Colors.black,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(),
    textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.black)),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 36),
      iconTheme: IconThemeData(color: Colors.black),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    focusColor: Colors.grey,
    primaryColor: Colors.black,
    scaffoldBackgroundColor: Colors.black,
    colorScheme: ColorScheme.dark(
      background: Colors.black,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
    ),
    canvasColor: Colors.black,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.white),
    ),
  );
}
