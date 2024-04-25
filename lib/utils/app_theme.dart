import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData lightTheme() {
    return ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: const AppBarTheme(color: Colors.deepPurple));
  }

  static ThemeData darkTheme() {
    return ThemeData.dark().copyWith(
        primaryColor: Colors.teal,
        appBarTheme: const AppBarTheme(color: Colors.black26));
  }
}
