import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(

  scaffoldBackgroundColor: Colors.black,

  colorScheme: ColorScheme.dark(
    surface: Colors.white12,
    surfaceBright: Colors.green,
    primary: Colors.white,
  ),

  filledButtonTheme: FilledButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
      foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
      textStyle: WidgetStateProperty.all<TextStyle>(
        const TextStyle(
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  ),

);