import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 64, 84, 166)),
  useMaterial3: true,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontSize: 18.0, color: Colors.black87),
    bodyMedium: TextStyle(fontSize: 16.0, color: Colors.black54),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(255, 64, 84, 166),
    foregroundColor: Colors.white,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 64, 84, 166),
      foregroundColor: Colors.white,
      textStyle: const TextStyle(fontSize: 16.0),
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    border: OutlineInputBorder(),
    contentPadding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
  ),
  scaffoldBackgroundColor: Colors.white,
  primarySwatch: Colors.blueGrey,
  

);  

