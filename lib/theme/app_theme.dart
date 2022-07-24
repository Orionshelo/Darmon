import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.red;

  static final ThemeData LightTheme = ThemeData.light().copyWith(
      // color primario de toda la aplicación
      primaryColor: Colors.indigo,

      // tema del appBar
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),

      // Tema del Elevating Buttons
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: Colors.indigo,
              shape: const StadiumBorder(),
              elevation: 0)),

      // Tema de los inputs

      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
      ));

  static final ThemeData DarkTheme = ThemeData.dark().copyWith(
    // color primario de toda la aplicación
    primaryColor: Colors.indigo,

    // tema del appBar
    appBarTheme: const AppBarTheme(color: primary, elevation: 0),

    // Tema del TextButtom
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),

    // Tema del Floating Action Buttons
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: primary),
  );
}
