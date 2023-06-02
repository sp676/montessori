import 'package:flutter/material.dart';

Color myThemeColor = const Color(0xFFB4D8E7);
final ThemeData appThemeData = ThemeData(
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(secondary: Colors.green),
  primaryColor: myThemeColor,
  // Define other theme properties here
);
