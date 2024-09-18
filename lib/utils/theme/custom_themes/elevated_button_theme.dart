import 'package:flutter/material.dart';

import '../../../assets/colors_container.dart';

class RAElevatedButtonTheme {
  //to avoid creating instances of this class
  RAElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: ColorContainer.clrWhite2,
      backgroundColor: ColorContainer.clrBlue1,
      disabledForegroundColor: ColorContainer.clrGray3,
      disabledBackgroundColor: ColorContainer.clrGray3,
      side: const BorderSide(
        color: ColorContainer.clrBlue1,
        width: 1,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      textStyle: const TextStyle(
        fontSize: 16,
        color: ColorContainer.clrWhite2,
        fontWeight: FontWeight.w500,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    )
  );
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: ColorContainer.clrWhite2,
      backgroundColor: ColorContainer.clrGray2,
      disabledForegroundColor: ColorContainer.clrGray3,
      disabledBackgroundColor: ColorContainer.clrGray3,
      side: const BorderSide(
        color: ColorContainer.clrGray2,
        width: 1,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      textStyle: const TextStyle(
        fontSize: 16,
        color: ColorContainer.clrWhite2,
        fontWeight: FontWeight.w500,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    )
  );
}