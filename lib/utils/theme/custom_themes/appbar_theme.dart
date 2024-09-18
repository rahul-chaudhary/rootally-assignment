import 'package:flutter/material.dart';

import '../../../assets/colors_container.dart';

class RAAppBarTheme {
  RAAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 10,
    centerTitle: false,
    scrolledUnderElevation: 10,
    surfaceTintColor: ColorContainer.clrTransparent,
    backgroundColor: ColorContainer.clrTransparent,
    iconTheme: IconThemeData(
      color: ColorContainer.clrGray2,
      size: 24
    ),
    actionsIconTheme: IconThemeData(
      color: ColorContainer.clrGray2,
      size: 24
    ),
    titleTextStyle:  TextStyle(
      color: ColorContainer.clrGray2,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    surfaceTintColor: ColorContainer.clrTransparent,
    backgroundColor: ColorContainer.clrTransparent,
    iconTheme: IconThemeData(
        color: ColorContainer.clrWhite2,
        size: 24
    ),
    actionsIconTheme: IconThemeData(
        color: ColorContainer.clrWhite2,
        size: 24
    ),
    titleTextStyle:  TextStyle(
      color: ColorContainer.clrWhite2,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
  );
}