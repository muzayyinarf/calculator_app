import 'package:flutter/material.dart';

class AppTheme {
  static final dark = ThemeData(
    backgroundColor: const Color(0xff243441),
    primaryColor: const Color(0xffEB8034),
    colorScheme: ThemeData()
        .colorScheme
        .copyWith(secondary: Colors.white60, brightness: Brightness.dark),
  );

  static final light = ThemeData(
    backgroundColor: const Color(0xffEBEBEB),
    primaryColor: const Color(0xffEB8034),
    colorScheme: ThemeData()
        .colorScheme
        .copyWith(secondary: Colors.black38, brightness: Brightness.light),
  );
}
