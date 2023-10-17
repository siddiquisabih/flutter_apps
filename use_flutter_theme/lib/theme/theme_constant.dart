import 'package:flutter/material.dart';
import 'package:use_flutter_theme/theme/color_constant.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(backgroundColor: PRIMARY_COLOR),
    primaryColor: PRIMARY_COLOR,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.orangeAccent,
    ),
    filledButtonTheme: FilledButtonThemeData(
        style: ButtonStyle(
            shape: MaterialStatePropertyAll<OutlinedBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0))),
            padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(
                EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0)),
            backgroundColor:
                const MaterialStatePropertyAll<Color>(ACCENT_COLOR))),
    textTheme: const TextTheme(
        titleMedium: TextStyle(
      color: Colors.black,
    )),
    inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide.none),
        filled: true,
        fillColor: Colors.grey.withOpacity(0.1)));

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    // appBarTheme: const AppBarTheme(backgroundColor: PRIMARY_COLOR),
    // primaryColor: PRIMARY_COLOR,

    switchTheme: SwitchThemeData(
      trackColor: MaterialStateProperty.all<Color>(Colors.grey),
      thumbColor: MaterialStateProperty.all<Color>(Colors.white),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.white,
    ),
    filledButtonTheme: FilledButtonThemeData(
        style: ButtonStyle(
      shape: MaterialStatePropertyAll<OutlinedBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
      padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0)),
      backgroundColor: const MaterialStatePropertyAll<Color>(Colors.white),
      foregroundColor: const MaterialStatePropertyAll<Color>(Colors.black),
      overlayColor: const MaterialStatePropertyAll<Color>(Colors.black26),
    )),
    textTheme: const TextTheme(
        titleMedium: TextStyle(
      color: Colors.white,
    )),
    inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide.none),
        filled: true,
        fillColor: Colors.grey.withOpacity(0.1)));