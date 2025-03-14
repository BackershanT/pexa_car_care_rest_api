import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Color(0XFFffffff),
  useMaterial3: true,
  listTileTheme: ListTileThemeData(
    tileColor: Colors.white,
    textColor: Colors.black,
    titleTextStyle: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white
    )

  )

);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Color(0XFF000000),
  useMaterial3: true,
    listTileTheme: ListTileThemeData(
        tileColor: Colors.white,
        textColor: Colors.white,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,color: Colors.white
        )

    )
);
