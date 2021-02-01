// Created by AMIT JANGID on 31/01/21.

import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFE36DA6);
const kPrimaryColorDark = Color(0xFFF15081);
const kPrimaryColorLight = Color(0xFFF3B3CE);

const kTextColor = Color(0xFF262E71);
const kBlueColor = Color(0xFF2E98CF);
const kLightBlueColor = Color(0xFF80ABDB);

const kGreyColor = Color(0xFFCCCCCC);
const kDarkGreyColor = Color(0xFF707070);
const kBlackishColor = Color(0xFF5C5C5C);

ThemeData themeData() {
  return ThemeData(
    hintColor: kGreyColor,
    cursorColor: kPrimaryColor,
    accentColor: kPrimaryColor,
    buttonTheme: _buttonTheme(),
    primaryColor: kPrimaryColor,
    primaryColorDark: kPrimaryColorDark,
    primaryColorLight: kPrimaryColorLight,
    scaffoldBackgroundColor: Colors.white,
    inputDecorationTheme: _inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    pageTransitionsTheme: PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{TargetPlatform.iOS: CupertinoPageTransitionsBuilder()},
    ),
  );
}

ButtonThemeData _buttonTheme() {
  return ButtonThemeData(
    height: 40,
    buttonColor: kPrimaryColor,
    splashColor: Colors.white38,
    textTheme: ButtonTextTheme.primary,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
  );
}

InputDecorationTheme _inputDecorationTheme() {
  var _underlineInputBorder = UnderlineInputBorder(
    borderRadius: BorderRadius.circular(0),
    borderSide: BorderSide(width: 1, color: kPrimaryColor),
  );

  return InputDecorationTheme(
    isDense: true,
    border: _underlineInputBorder,
    enabledBorder: _underlineInputBorder,
    focusedBorder: _underlineInputBorder,
    disabledBorder: _underlineInputBorder,
    contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
  );
}
